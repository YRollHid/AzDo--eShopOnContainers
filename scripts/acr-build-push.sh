# Set variables
ACR_NAME=${ACRNAME}
RESOURCE_GROUP=${AKSRG}

# Build Services images
ROOTPATHSERVICES='src/Services'

# Build & Push Basket-API
az acr build \
    --resource-group $RESOURCE_GROUP \
    --registry $ACR_NAME \
    --file $ROOTPATHSERVICES/Basket/Basket.API \
    --image basket-api:${TAG} .

# Build & Push Catalog-API
az acr build \
    --resource-group $RESOURCE_GROUP \
    --registry $ACR_NAME \
    --file $ROOTPATHSERVICES/Catalog/Catalog.API \
    --image catalog-api:${TAG} .

# Verify the images
az acr repository list \
    --name $ACR_NAME \
    --output table