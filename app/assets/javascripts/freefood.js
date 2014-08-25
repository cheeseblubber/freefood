window.App = {
	Collections: {},
	Models: {},
	Routers: {},
	Views: {},
	
	initialize: function () {
		new APp.Router.AppRouter();
		Backbone.history.start();
	}
}