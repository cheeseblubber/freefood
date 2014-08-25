App.Views.EventsIndex = Backbone.View.extend({
	template: JST["events/index"],
	
	render: function (){
		// console.log(this.collection.models)
		// this.collection.models.each(function (event) {
		// 	console.log(event)
		// });
		console.log(this.collection)
		_.each(this.collection.models, function (event) {
			console.log(event.attributes)
		})
		var renderedContent = this.template({ events: this.collection.models });
		this.$el.html(renderedContent);
		return this;
	},
})