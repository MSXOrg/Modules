targetScope = 'resourceGroup'

@description('Required. The name of the Key Vault.')
param keyVaultName string

param accessPolicies array

param tenantId string = subscription().tenantId

resource keyvault 'Microsoft.KeyVault/vaults@2019-09-01' = {
  name: keyVaultName
  location: 'westeurope'

  properties: {
    accessPolicies: accessPolicies
    sku: {
      name: 'standard'
      family: 'A'
    }
    tenantId: tenantId
  }

}
