window.App = {
	Collections: {},
	Models: {},
	Routers: {},
	Views: {},
	
	initialize: function () {
		new App.Router.AppRouter();
		Backbone.history.start();
	}
}
$(App.initialize);