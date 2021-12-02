targetScope = 'resourceGroup'
param name string


resource storageAccount 'Microsoft.Storage/storageAccounts@2021-06-01' = {
  name: name
  kind: 'StorageV2'
  location: 'westeurope'
  sku: {
    name: 'Premium_LRS'
  }
  properties: {}
}
