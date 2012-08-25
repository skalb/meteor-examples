should = require('should')
Backbone = require('backbone')
sinon = require('sinon')
SampleRouterFactory = require('../client/lib/sample_router_factory').SampleRouterFactory

describe "SampleRouter", ->
  items = 
    find: sinon.spy()

  factory = new SampleRouterFactory(Backbone, items)
  router = factory.getRouter(Backbone)

  it "should have an index route", ->
    router.routes[''].should.equal('index')

  it "should retrieve all items when navigating to index", ->
    router.index()
    items.find.called.should.equal true