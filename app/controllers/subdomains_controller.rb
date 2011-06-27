class SubdomainsController < ApplicationController
  # GET /subdomains
  # GET /subdomains.json
  def index
    @subdomains = Subdomain.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @subdomains }
    end
  end

  # GET /subdomains/1
  # GET /subdomains/1.json
  def show
    @subdomain = Subdomain.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @subdomain }
    end
  end

  # GET /subdomains/new
  # GET /subdomains/new.json
  def new
    @subdomain = Subdomain.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @subdomain }
    end
  end

  # GET /subdomains/1/edit
  def edit
    @subdomain = Subdomain.find(params[:id])
  end

  # POST /subdomains
  # POST /subdomains.json
  def create
    @subdomain = Subdomain.new(params[:subdomain])

    respond_to do |format|
      if @subdomain.save
        format.html { redirect_to @subdomain, notice: 'Subdomain was successfully created.' }
        format.json { render json: @subdomain, status: :created, location: @subdomain }
      else
        format.html { render action: "new" }
        format.json { render json: @subdomain.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /subdomains/1
  # PUT /subdomains/1.json
  def update
    @subdomain = Subdomain.find(params[:id])

    respond_to do |format|
      if @subdomain.update_attributes(params[:subdomain])
        format.html { redirect_to @subdomain, notice: 'Subdomain was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @subdomain.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /subdomains/1
  # DELETE /subdomains/1.json
  def destroy
    @subdomain = Subdomain.find(params[:id])
    @subdomain.destroy

    respond_to do |format|
      format.html { redirect_to subdomains_url }
      format.json { head :ok }
    end
  end
end
