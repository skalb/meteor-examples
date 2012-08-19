root = exports ? this

class SampleRouterFactory
  constructor: (@Backbone) ->

  getRouter: () ->
    SampleRouter = @Backbone.Router.extend(
      routes:
        "": "index"

      index: ->
    )
    new SampleRouter

root.SampleRouterFactory = SampleRouterFactory
