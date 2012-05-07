class BottlingsController < ApplicationController
  include ApplicationHelper

  # GET /bottlings
  # GET /bottlings.json
  def index
    handle_sorting(:bottling, :sku, :wine, :bottle_size)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @bottlings }
    end
  end

  # GET /bottlings/1
  # GET /bottlings/1.json
  def show
    @bottling = Bottling.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @bottling }
    end
  end

  # GET /bottlings/new
  # GET /bottlings/new.json
  def new
    @bottling = Bottling.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @bottling }
    end
  end

  # GET /bottlings/1/edit
  def edit
    @bottling = Bottling.find(params[:id])
  end

  # POST /bottlings
  # POST /bottlings.json
  def create
    @bottling = Bottling.new(params[:bottling])

    respond_to do |format|
      if @bottling.save
        format.html { redirect_to @bottling, notice: 'bottling was successfully created.' }
        format.json { render json: @bottling, status: :created, location: @bottling }
      else
        format.html { render action: "new" }
        format.json { render json: @bottling.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /bottlings/1
  # PUT /bottlings/1.json
  def update
    @bottling = Bottling.find(params[:id])

    respond_to do |format|
      if @bottling.update_attributes(params[:bottling])
        format.html { redirect_to @bottling, notice: 'bottling was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @bottling.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bottlings/1
  # DELETE /bottlings/1.json
  def destroy
    @bottling = Bottling.find(params[:id])
    @bottling.destroy

    respond_to do |format|
      format.html { redirect_to bottlings_url }
      format.json { head :ok }
    end
  end
end
