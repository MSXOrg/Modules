targetScope = 'resourceGroup'
param keyVaultName string
resource keyvault 'Microsoft.KeyVault/vaults@2019-09-01' = {
  name: keyVaultName
  location: 'westeurope'
  sku: {
    name: 'standard'
  }
}
