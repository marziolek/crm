class BugsController < ApplicationController
	before_filter :authenticate
	layout :is_it_admin
	
	def is_it_admin
		current_user.admin? ? "application" : "bugtracking"
	end

  def index
		@bugs = Bug.all
		
		respond_to do |format|
		  format.html # index.html.erb
		  format.json { render json: @bugs }
		end
  end

  def new
		@bug= Bug.new

		respond_to do |format|
			format.html # new.html.erb
			format.json { render json: @bug }
		end
  end

  def create
  end

  def delete
  end

  def show
  end

end
