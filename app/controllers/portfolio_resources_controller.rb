class PortfolioResourcesController < ApplicationController
	def index
		@portfolio_items = PortfolioResource.all
	end
end
