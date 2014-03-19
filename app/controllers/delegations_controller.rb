class DelegationsController < ApplicationController
  # GET /delegations
  # GET /delegations.json
  def index
    @delegations = Delegation.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @delegations }
    end
  end

  # GET /delegations/1
  # GET /delegations/1.json
  def show
    @delegation = Delegation.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @delegation }
    end
  end

  # GET /delegations/new
  # GET /delegations/new.json
  def new
    @delegation = Delegation.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @delegation }
    end
  end

  # GET /delegations/1/edit
  def edit
    @delegation = Delegation.find(params[:id])
  end

  # POST /delegations
  # POST /delegations.json
  def create
    @delegation = Delegation.new(params[:delegation])

    respond_to do |format|
      if @delegation.save
        format.html { redirect_to @delegation, :notice => 'Delegation was successfully created.' }
        format.json { render :json => @delegation, :status => :created, :location => @delegation }
      else
        format.html { render :action => "new" }
        format.json { render :json => @delegation.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /delegations/1
  # PUT /delegations/1.json
  def update
    @delegation = Delegation.find(params[:id])

    respond_to do |format|
      if @delegation.update_attributes(params[:delegation])
        format.html { redirect_to @delegation, :notice => 'Delegation was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @delegation.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /delegations/1
  # DELETE /delegations/1.json
  def destroy
    @delegation = Delegation.find(params[:id])
    @delegation.destroy

    respond_to do |format|
      format.html { redirect_to delegations_url }
      format.json { head :no_content }
    end
  end
end
