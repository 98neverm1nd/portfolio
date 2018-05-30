class PortfolioResourcesController < ApplicationController
	def index
		@portfolio_items = PortfolioResource.all
	end

	def new
		@portfolio_item = PortfolioResource.new
	end
	def create
  	@portfolio_item = PortfolioResource.new(params.require(:portfolio_resource).permit(:title, :subtitle, :body))

    respond_to do |format|
      if @portfolio_item.save
        format.html { redirect_to @portfolio_item, notice: 'Portfolio item was successfully created.' }
        format.json { render :show, status: :created, location: @portfolio_item }
      else
        format.html { render :new }
        format.json { render json: @portfolio_item.errors, status: :unprocessable_entity }
      end
    end
  end
def show
  end

end
