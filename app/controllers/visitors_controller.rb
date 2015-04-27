class VisitorsController < ApplicationController
skip_before_action :authenticate

def index
	@ideas=Idea.all
	end
	
  def ascending
    @ideas = Idea.ascending
  end

  def descending
    @ideas = Idea.descending
  end

  def newest
    @ideas = Idea.newest
  end

  def oldest
    @ideas = Idea.oldest
  end

end