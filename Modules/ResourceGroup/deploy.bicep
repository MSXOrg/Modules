targetScope = 'subscription'

param name string

param department string

resource resourceGroup 'Microsoft.Resources/resourceGroups@2021-04-01' = {
  name: name
  location: 'westeurope'
  tags: {
    'ApplicationType': 'Management'
    'Department': department
  }
}

output name string = resourceGroup.name

output id string = resourceGroup.id
