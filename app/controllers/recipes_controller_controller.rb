class RecipesControllerController < ApplicationController
	require 'will_paginate/array'

	def index
		@search_term = params[:search] || 'chocolate'
		@recipes = Recipe.for(@search_term).paginate(page: params[:page], per_page: 5)
		@categories = CATEGORIES
	end
end