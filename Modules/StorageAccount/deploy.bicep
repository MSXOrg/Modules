targetScope = 'resourceGroup'
param name string = ''

var saName = uniqueString(subscription().subscriptionId, resourceGroup().name)

resource storageAccount 'Microsoft.Storage/storageAccounts@2021-06-01' = {
  name: empty(name) ? saName : name
  kind: 'StorageV2'
  location: 'westeurope'
  sku: {
    name: 'Premium_LRS'
  }
  properties: {}
}
