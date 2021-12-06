targetScope = 'resourceGroup'
param keyVaultName string
resource keyvault microsoft.'Microsoft.KeyVault/vaults@2019-01-01' = {
  name: keyVaultName
  location: 'westeurope'
  sku: {
    name: 'standard'
  }
}
