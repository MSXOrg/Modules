resource storageAccount 'Microsoft.Storage/storageAccounts@2021-06-01' = {
  name: 'storageacc21342354'
  kind: 'StorageV2'
  location: 'westeurope'
  sku: {
    name: 'Premium_LRS'
  }
  properties: {}
}
