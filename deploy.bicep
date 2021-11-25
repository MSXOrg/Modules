targetScope = 'subscription'

param resourceGroupName string

param department string

resource resourceGroup 'Microsoft.Resources/resourceGroups@2021-04-01' = {
  name: resourceGroupName
  location: 'westeurope'
  tags: {
    'ApplicationType': 'Management'
    'Department': department
  }
}
