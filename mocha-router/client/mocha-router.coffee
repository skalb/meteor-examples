Meteor.startup -> 
  factory = new SampleRouterFactory(Backbone)
  items = new Meteor.Collection("items")
  router = factory.getRouter(Backbone, items)
