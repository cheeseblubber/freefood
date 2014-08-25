window.App = {
	Collections: {},
	Models: {},
	Routers: {},
	Views: {},
	
	initialize: function () {
		App.Collections.events.fetch()
		new App.Routers.AppRouter();
		// App.Collections.events.fetch({
		// 	success: function () {
		// 	},}
		// );
		Backbone.history.start();
	}
}
$(App.initialize);