param appName string

@allowed([
  'vsARM'
  'code'
  'bicep'
])
param src string = 'bicep'

var prefix = '${src}-${appName}'
var myHost_var = '${prefix}-plan'
var mySite_var = '${prefix}-site'

resource myHost 'Microsoft.Web/serverfarms@2018-02-01' = {
  name: myHost_var
  location: resourceGroup().location
  sku: {
    name: 'F1'
  }
}

module mySite 'module-std-website.bicep' = {
  name: mySite_var
  params: {
    hostId: myHost.id
    mySite_var: mySite_var
  }
  
}
