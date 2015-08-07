if Meteor.isClient
  BrowserPolicy.content.allowOriginForAll("http://meteor.local")

if Meteor.isServer
  BrowserPolicy.content.allowOriginForAll("http://meteor.local")
