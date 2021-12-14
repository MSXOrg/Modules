targetScope = 'managementGroup'

param mainManagementGroupName string
param mainMgDisplayName string

resource mainMgGroup 'Microsoft.Management/managementGroups@2021-04-01' = {
  name: mainManagementGroupName
  scope: tenant()
  properties: {
    displayName: mainMgDisplayName
  }
}



output newmgname string = mainManagementGroupName
output groupId string = mainMgGroup.id

param childMgGroupName string
param childMgDisplayName string

resource childMgGroup 'Microsoft.Management/managementGroups@2021-04-01' = {
  name: childMgGroupName
  scope: tenant()
  properties: {
    displayName: childMgDisplayName
    details: {      
      parent: {
        id: mainMgGroup.id
      }
    }
  }

}


