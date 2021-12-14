targetScope = 'tenant'

param managementGroupName string
param displayMgName string

resource mgName 'Microsoft.Management/managementGroups@2021-04-01' = {
  name: managementGroupName
  properties: {
    displayName: displayMgName
  }
}

output newmgname string = managementGroupName
