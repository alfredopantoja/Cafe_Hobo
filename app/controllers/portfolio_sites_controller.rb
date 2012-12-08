class PortfolioSitesController < ApplicationController
  # GET /portfolio_sites
  # GET /portfolio_sites.json
  def index
    @portfolio_sites = PortfolioSite.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @portfolio_sites }
    end
  end

  # GET /portfolio_sites/1
  # GET /portfolio_sites/1.json
  def show
    @portfolio_site = PortfolioSite.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @portfolio_site }
    end
  end

  # GET /portfolio_sites/new
  # GET /portfolio_sites/new.json
  def new
    @portfolio_site = PortfolioSite.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @portfolio_site }
    end
  end

  # GET /portfolio_sites/1/edit
  def edit
    @portfolio_site = PortfolioSite.find(params[:id])
  end

  # POST /portfolio_sites
  # POST /portfolio_sites.json
  def create
    @portfolio_site = PortfolioSite.new(params[:portfolio_site])

    respond_to do |format|
      if @portfolio_site.save
        format.html { redirect_to @portfolio_site, notice: 'Portfolio site was successfully created.' }
        format.json { render json: @portfolio_site, status: :created, location: @portfolio_site }
      else
        format.html { render action: "new" }
        format.json { render json: @portfolio_site.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /portfolio_sites/1
  # PUT /portfolio_sites/1.json
  def update
    @portfolio_site = PortfolioSite.find(params[:id])

    respond_to do |format|
      if @portfolio_site.update_attributes(params[:portfolio_site])
        format.html { redirect_to @portfolio_site, notice: 'Portfolio site was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @portfolio_site.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /portfolio_sites/1
  # DELETE /portfolio_sites/1.json
  def destroy
    @portfolio_site = PortfolioSite.find(params[:id])
    @portfolio_site.destroy

    respond_to do |format|
      format.html { redirect_to portfolio_sites_url }
      format.json { head :no_content }
    end
  end
end
