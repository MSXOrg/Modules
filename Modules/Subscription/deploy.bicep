targetScope = 'tenant'

param name string

param billingScope string

param displayName string

@allowed([
    'Production'
    'DevTest'
])
param workload string = 'Production'

var displayName_var = !empty(name) ? name : displayName

resource subscription 'Microsoft.Subscription/aliases@2020-09-01' = {
    name: name
    properties: {
        billingScope: billingScope
        displayName: displayName_var
        workload: workload
    }
}

output subscription object = subscription
