window.App = {
	Collections: {},
	Models: {},
	Routers: {},
	Views: {},
	
	initialize: function () {
		App.Collections.events.fetch({
			success: function() {
				new App.Routers.AppRouter();
				Backbone.history.start();
				
			}
		})
		// App.Collections.events.fetch({
		// 	success: function () {
		// 	},}
		// );
	}
}
$(App.initialize);