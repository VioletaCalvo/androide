if Meteor.isClient

  Session.setDefault 'counter', 0

  Template.layout.helpers
    'logged': ->
      if Meteor.userId() then true else false

  Template.hello.helpers
    counter: ->
      Session.get 'counter'

  Template.hello.events
    'click button': ->
      # increment the counter when button is clicked
      Session.set 'counter', Session.get('counter') + 1

  Template.takePhoto.events 'click .capture': ->
    MeteorCamera.getPicture {}, (error, data) ->
      Session.set 'photo', data
      return
    return
  Template.takePhoto.helpers 'photo': ->
    Session.get 'photo'



if Meteor.isServer
  Meteor.startup ->
    # code to run on server at startup
    return
