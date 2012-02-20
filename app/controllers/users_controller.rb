#encoding: UTF-8
class UsersController < ApplicationController
	before_filter :admin_required

  # GET /users
  # GET /users.json
  def index
    @users = User.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @users }
    end
  end
  
   # GET /users/1
  # GET /users/1.json
  def show
    @user = User.find(params[:id])

    respond_to do |format|
      format.html # user.html.erb
      format.json { render json: @user }
    end
  end
  
  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
	
	respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: "Rejestracja powiodła się." }
        format.json { render json: @user, status: :created, location: @user}
      else
        format.html { render action: "new" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
	if @user.admin == 1
		@user.admin = true
	else 
		@user.admin = false
	end

    if @user.update_attributes(params[:user])
      flash[:notice] = "Profil zaktualizowany pomyślnie."
      redirect_to users_url
    else
      render :action => 'edit'
    end
  end
  
   # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @client = Client.find(params[:id])
    @client.destroy

    respond_to do |format|
      format.html { redirect_to users_url }
      format.json { head :ok }
    end
  end
end
