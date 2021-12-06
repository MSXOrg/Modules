targetScope = 'subscription'

param name string

param department string

@description('Returns the list of subscriptions for the given department')
param maintenancewindow string

module rg '../../Modules/ResourceGroup/deploy.bicep' = {
    name: '${name}-rg-deployment'
    params: {
        department: department
        name: name
    }
}

module storageAccount '../../Modules/StorageAccount/deploy.bicep' = {
    scope: resourceGroup(name)
    name: '${name}-sa-deployment'
    params: {
        name: '${name}sathing'
    }
    dependsOn: [
        rg
    ]
}

output resourceGroupName string = rg.name
output storageAccountName string = storageAccount.name
