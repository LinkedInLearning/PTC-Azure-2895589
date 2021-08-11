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

var sites = [
  {
    name: 'DadApp'
    color: 'lightgreen'
  }
  {
    name: 'MomApp'
    color: 'lightyellow'
  }
  {
    name: 'MikeSite'
    color: 'lightblue'
  }
]

module mySite 'module-std-website.bicep' = [for site in sites: {
  name: '${src}-${site.name}-site'
  params:  {
    siteColor: site.color
    siteName: '${src}-${site.name}-site'
    hostId: myHost.id
    
  }
}]

