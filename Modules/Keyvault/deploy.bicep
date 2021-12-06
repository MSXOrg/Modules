targetScope = 'resourceGroup'
param keyVaultName string
param tenantId string
resource keyvault 'Microsoft.KeyVault/vaults@2019-09-01' = {
  name: keyVaultName
  location: 'westeurope'
  
  properties: {
    sku: {
      name: 'standard'
      family: 'A'
    }
    tenantId: tenantId
  }

}
