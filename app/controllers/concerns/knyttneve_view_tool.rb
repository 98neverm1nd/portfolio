module KnyttneveViewTool
	extend ActiveSupport::Concern
	included do
		before_action :set_copyright
	end

	def set_copyright
		@copyright = KnyttneveViewTool::Renderer.copyright 'Ilya Kvashenko', 'All rigths reserved'
	end

	class Renderer
		def self.copyright name, message
			"&copy; #{Time.now.year} | <b>#{name}</b> #{message}".html_safe
		end
	end	
end