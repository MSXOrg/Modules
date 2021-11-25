targetScope = 'resourceGroup'
param storageaccount string 


resource storageAccount 'Microsoft.Storage/storageAccounts@2021-06-01' = {
  name: storageaccount
  kind: 'StorageV2'
  location: 'westeurope'
  sku: {
    name: 'Premium_LRS'
  }
  properties: {}
}
