# Set variables
ACR_NAME=${ACRNAME}
RESOURCE_GROUP=${AKSRG}

# Build Services images
ROOTPATHSERVICES='src/Services'

# Build & Push Basket-API
az acr build \
    --resource-group $RESOURCE_GROUP \
    --registry $ACR_NAME \
    --image basket-api:${TAG} $ROOTPATHSERVICES/Basket/Basket.API/

# Build & Push Catalog-API
az acr build \
    --resource-group $RESOURCE_GROUP \
    --registry $ACR_NAME \
    --image catalog-api:${TAG} $ROOTPATHSERVICES/Catalog/Catalog.API/

# Verify the images
az acr repository list \
    --name $ACR_NAME \
    --output table