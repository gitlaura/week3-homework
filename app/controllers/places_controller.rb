class PlacesController < ApplicationController

	def index
		@places = Place.all
	end

	def show
		@place = Place.find_by(:id => params["id"])
	end

	def new
	end

	def create
		Place.create(title: params["title"], photo: params["photo"], price: params["price"], description: params["description"])
		redirect_to root_url
	end

	def edit
		@place = Place.find_by(:id => params["id"])
	end

	def update
		place = Place.find_by(:id => params["id"])
		place.title = params["title"]
		place.photo = params["photo"]
		place.price = params["price"]
		place.description = params["description"]
		place.save
		redirect_to action: "show", id: place.id
	end

	def delete
		place = Place.find_by(:id => params["id"])
		place.delete
		redirect_to root_url
	end

end