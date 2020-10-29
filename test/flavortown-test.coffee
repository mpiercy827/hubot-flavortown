Helper = require('hubot-test-helper')
chai = require 'chai'

expect = chai.expect

helper = new Helper('../src/flavortown.coffee')

describe 'flavortown', ->
  beforeEach ->
    @room = helper.createRoom()

  afterEach ->
    @room.destroy()

  it 'responds to flavortown', ->
    @room.user.say('alice', '@hubot flavortown').then =>
      expect(@room.messages[0]).to.eql ['alice', '@hubot flavortown']
      expect(@room.messages[1][0]).to.eql 'hubot'
      expect(@room.messages[1][1].split(" ")[0]).to.eql '@alice'

  it 'hears take me to flavortown', ->
    @room.user.say('bob', 'take me to flavortown').then =>
      expect(@room.messages[0]).to.eql ['bob', 'take me to flavortown']
      expect(@room.messages[1][0]).to.eql 'hubot'
      expect(@room.messages[1][1].split(" ")[0]).to.not.eql '@bob'
