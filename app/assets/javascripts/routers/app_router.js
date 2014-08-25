App.Routers.AppRouter = Backbone.Router.extend({
	routes: {
		"": "eventsIndex"
	},
	eventsIndex: function () {
		App.Collections.events.fetch({
			success: function () {
			},}
		);
		var indexView = new App.Views.EventsIndex({
			collection: App.Collections.events
		})
		this._swapView(indexView);

	},
	
	_swapView: function (newView) {
		if (this.currentView) {
			this.currentView.remove();
		}
		
		$("body").html(newView.render().$el);
		this.currentView = newView;
	}
})