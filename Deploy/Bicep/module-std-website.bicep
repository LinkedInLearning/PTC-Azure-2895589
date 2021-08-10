
param mySite_var string
param hostId string

resource mySite 'Microsoft.Web/sites@2018-11-01' = {
  name: mySite_var
  location: resourceGroup().location
  properties: {
    serverFarmId: hostId
  }
}

resource config 'Microsoft.Web/sites/config@2021-01-15' = {
  name: 'appsettings'
  parent: mySite
  properties: {
    EnvName: mySite.name
    FavoriteColor: 'lightblue'
  }
}
