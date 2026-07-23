#!/usr/bin/env bash

set -euo pipefail

LOCATION="centralindia"
BACKEND_RG="idp-tfstate-rg"
CONTAINER_NAME="tfstate"

# Storage account names must be globally unique, lowercase, and 3-24 characters.
STORAGE_ACCOUNT="idptfstate$(date +%s | tail -c 7)"

echo "Creating Terraform backend resources..."
echo "Location: $LOCATION"
echo "Resource Group: $BACKEND_RG"
echo "Storage Account: $STORAGE_ACCOUNT"
echo "Container: $CONTAINER_NAME"

echo "Checking Azure login..."
az account show >/dev/null 2>&1 || {
  echo "You are not logged in to Azure."
  echo "Run: az login"
  exit 1
}

echo "Creating resource group..."
az group create \
  --name "$BACKEND_RG" \
  --location "$LOCATION" \
  --output none

echo "Creating storage account..."
az storage account create \
  --name "$STORAGE_ACCOUNT" \
  --resource-group "$BACKEND_RG" \
  --location "$LOCATION" \
  --sku Standard_LRS \
  --kind StorageV2 \
  --min-tls-version TLS1_2 \
  --allow-blob-public-access false \
  --output none

echo "Creating tfstate container..."
az storage container create \
  --name "$CONTAINER_NAME" \
  --account-name "$STORAGE_ACCOUNT" \
  --auth-mode login \
  --output none

echo "Enabling blob versioning..."
az storage account blob-service-properties update \
  --account-name "$STORAGE_ACCOUNT" \
  --resource-group "$BACKEND_RG" \
  --enable-versioning true \
  --output none

OUTPUT_FILE="$HOME/enterprise-idp-platform/terraform/backend/backend-values.txt"

cat > "$OUTPUT_FILE" <<EOF
resource_group_name=$BACKEND_RG
storage_account_name=$STORAGE_ACCOUNT
container_name=$CONTAINER_NAME
location=$LOCATION
EOF

echo
echo "Terraform backend created successfully."
echo "Resource Group: $BACKEND_RG"
echo "Storage Account: $STORAGE_ACCOUNT"
echo "Container: $CONTAINER_NAME"
echo
echo "Backend values saved to:"
echo "$OUTPUT_FILE"
