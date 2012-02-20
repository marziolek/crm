#encoding: UTF-8
class BugsController < ApplicationController
	before_filter :authenticate
	layout :is_it_admin
	
	def is_it_admin
		current_user.admin? ? "application" : "bugtracking"
	end

  def index  
		if current_user.admin?
			@bugs2 = Bug.paginate(:page => params[:page], :per_page => 10)
		else
			@bugs2 = current_user.bugs.paginate(:page => params[:page], :per_page => 10)
		end
	
		respond_to do |format|
		  format.html # index.html.erb
		  format.json { render json: @bugs2 }
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
	@bug = Bug.new(params[:bug])

    respond_to do |format|
      if @bug.save
        format.html { redirect_to bugs_path, notice: 'Błąd został zgłoszony.' }
        format.json { render json: @bug, status: :created, location: @bug }
      else
        format.html { render action: "new" }
        format.json { render json: @bug.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
		@bug = Bug.find(params[:id])
  end
  
  def update
	@bug = Bug.find(params[:id])

    respond_to do |format|
      if @bug.update_attributes(params[:bug])
        format.html { redirect_to @bug, notice: "Informacje o błędzie zostały zaktualizowane."}
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @bug.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def destroy
    @bug = Bug.find(params[:id])
    @bug.destroy

    respond_to do |format|
      format.html { redirect_to bugs_url, notice: "Usunięto zgłoszony błąd." }
      format.json { head :ok }
    end
  end

  def show
		@bug = Bug.find(params[:id])
  end

end
