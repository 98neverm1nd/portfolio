class PortfolioResource < ApplicationRecord
	def index
		@portfolio_items = PortfolioResource.all
	end
end
