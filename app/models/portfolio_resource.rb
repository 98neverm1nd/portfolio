class PortfolioResource < ApplicationRecord
	def index
		@portfolio_items = PortfolioResource.all
	end
	has_many :technologies
	include Placeholder
	validates_presence_of :title, :body, :main_image, :thumb_image

	def self.angular
		where(subtitle: 'Angular')
	end

	scope :ror, -> {where(subtitle: 'Ruby on Rails')}

	after_initialize :set_defaults
	def set_defaults
		self.main_image ||= Placeholder.image_generator(height: 700, width: 400)
		self.thumb_image ||= Placeholder.image_generator(height: 350, width: 150)
	end
end
