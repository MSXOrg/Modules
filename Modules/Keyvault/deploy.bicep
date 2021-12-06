targetScope = 'resourceGroup'

@description('Required. The name of the Key Vault.')
param keyVaultName string

param accessPolicies array

param tenantId string = subscription().tenantId

param location string = resourceGroup().location

resource keyvault 'Microsoft.KeyVault/vaults@2019-09-01' = {
  name: keyVaultName
  location: location

  properties: {
    accessPolicies: accessPolicies
    sku: {
      name: 'standard'
      family: 'A'
    }
    tenantId: tenantId
  }

}
