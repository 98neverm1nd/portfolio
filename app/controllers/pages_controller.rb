class PagesController < ApplicationController
  def home
    @skills = Skill.all
    @blogs = Blog.all
    @portfolio_resources = PortfolioResource.all
  end

  def about
  end

  def contact
  end
end
