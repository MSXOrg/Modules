targetScope = 'subscription'
param rg string = 'rgKate'

resource resourcegroup 'Microsoft.Resources/resourceGroups@2021-04-01' = { 
  name: rg
  location: 'NorthEurope'
}
