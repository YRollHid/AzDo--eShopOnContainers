# Set variables
ACR_NAME=${ACRNAME}
RESOURCE_GROUP=${AKSRG}

# Build Services images
ROOTPATHSERVICES='src/Services'
BROOTPATHSERVICES='../../'

# Build & Push Basket-API
cd $ROOTPATHSERVICES/Basket/Basket.API
az acr build \
    --resource-group $RESOURCE_GROUP \
    --registry $ACR_NAME \
    --image basket-api:${TAG} .

# Build & Push Catalog-API
cd $BROOTPATHSERVICES
cd $ROOTPATHSERVICES/Catalog/Catalog.API
az acr build \
    --resource-group $RESOURCE_GROUP \
    --registry $ACR_NAME \
    --image catalog-api:${TAG} .

# Verify the images
az acr repository list \
    --name $ACR_NAME \
    --output table