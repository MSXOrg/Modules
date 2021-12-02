targetScope = 'subscription'

param name string

param department string

module rg '../../Modules/ResourceGroup/deploy.bicep' = {
    name: '${name}-rg-deployment'
    params: {
        department: department
        name: name
    }
}

module storageAccount '../../Modules/StorageAccount/deploy.bicep' = {
    name: '${name}-sa-deployment'
    scope: resourceGroup(rg.name)
    params: {
        name: '${name}sathing'
    }
}

output resourceGroupName string = rg.name
output storageAccountName string = storageAccount.name
