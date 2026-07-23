
BACKEND_RG="idp-tfstate-rg"
STORAGE_ACCOUNT="idptfstate807622"



USER_OBJECT_ID=$(az ad signed-in-user show --query id -o tsv)

STORAGE_ID=$(az storage account show \
  --name "$STORAGE_ACCOUNT" \
  --resource-group "$BACKEND_RG" \
  --query id \
  --output tsv)

az role assignment create \
  --assignee-object-id "$USER_OBJECT_ID" \
  --assignee-principal-type User \
  --role "Storage Blob Data Contributor" \
  --scope "$STORAGE_ID"
