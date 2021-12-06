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

<<<<<<< HEAD
=======
output name string = resourceGroup.name

output id string = resourceGroup.id
>>>>>>> 6030dab551f01a81f1cf55555e075d8e27d4d28f
