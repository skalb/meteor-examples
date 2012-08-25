root = exports ? this

class SampleRouterFactory
  constructor: (@Backbone, @Items) ->

  getRouter: () ->
    SampleRouter = @Backbone.Router.extend(
      routes:
        "": "index"

      index: =>
        items = @Items.find()
    )
    new SampleRouter

root.SampleRouterFactory = SampleRouterFactory
