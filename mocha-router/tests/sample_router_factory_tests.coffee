should = require('should')
Backbone = require('backbone')
SampleRouterFactory = require('../client/lib/sample_router_factory').SampleRouterFactory

describe "SampleRouter", ->
  factory = new SampleRouterFactory(Backbone)
  router = factory.getRouter(Backbone)
  it "should have an index router", ->
    router.routes[''].should.equal('index')