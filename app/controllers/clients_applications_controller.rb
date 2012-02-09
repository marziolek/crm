#encoding: utf-8
class ClientsApplicationsController < ApplicationController
  before_filter :authenticate
  # GET /clients_applications
  # GET /clients_applications.json
  def index
    @clients_applications = ClientsApplication.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @clients_applications }
    end
  
    
  end

  # GET /clients_applications/1
  # GET /clients_applications/1.json
  def show
    @clients_application = ClientsApplication.find(params[:id])
    
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @clients_application }
    end
  end

  # GET /clients_applications/new
  # GET /clients_applications/new.json
  def new
    @clients_application = ClientsApplication.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @clients_application }
    end
  end

  # GET /clients_applications/1/edit
  def edit
    @clients_application = ClientsApplication.find(params[:id])
  end

  # POST /clients_applications
  # POST /clients_applications.json
  def create
    @clients_application = ClientsApplication.new(params[:clients_application])

    respond_to do |format|
      if @clients_application.save
        format.html { redirect_to @clients_application, notice: 'Clients application was successfully created.' }
        format.json { render json: @clients_application, status: :created, location: @clients_application }
      else
        format.html { render action: "new" }
        format.json { render json: @clients_application.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /clients_applications/1
  # PUT /clients_applications/1.json
  def update
    @clients_application = ClientsApplication.find(params[:id])

    respond_to do |format|
      if @clients_application.update_attributes(params[:clients_application])
        format.html { redirect_to @clients_application, notice: 'Clients application was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @clients_application.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clients_applications/1
  # DELETE /clients_applications/1.json
  def destroy
    @clients_application = ClientsApplication.find(params[:id])
    @clients_application.destroy

    respond_to do |format|
      format.html { redirect_to clients_applications_url }
      format.json { head :ok }
    end
  end
end
