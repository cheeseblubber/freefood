App.Collections.Events = Backbone.Collection.extend({
	model: App.Models.Event,
	url: "/api/events"
})

App.Collections.events = new App.Collections.Events();