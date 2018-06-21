class PortfolioResource < ApplicationRecord
	def index
		@portfolio_items = PortfolioResource.all
	end

	validates_presence_of :title, :body, :main_image, :thumb_image

	def self.angular
		where(subtitle: 'Angular')
	end
end
