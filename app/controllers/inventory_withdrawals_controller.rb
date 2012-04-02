class InventoryWithdrawalsController < ApplicationController
  # GET /inventory_withdrawals
  # GET /inventory_withdrawals.json
  def index
    @inventory_withdrawals = InventoryWithdrawal.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @inventory_withdrawals }
    end
  end

  # GET /inventory_withdrawals/1
  # GET /inventory_withdrawals/1.json
  def show
    @inventory_withdrawal = InventoryWithdrawal.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @inventory_withdrawal }
    end
  end

  # GET /inventory_withdrawals/new
  # GET /inventory_withdrawals/new.json
  def new
    @inventory_withdrawal = InventoryWithdrawal.new
    @inventory_withdrawal.inventory_withdrawal_items.build

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @inventory_withdrawal }
    end
  end

  # GET /inventory_withdrawals/1/edit
  def edit
    @inventory_withdrawal = InventoryWithdrawal.find(params[:id])
  end

  # POST /inventory_withdrawals
  # POST /inventory_withdrawals.json
  def create
    @inventory_withdrawal = InventoryWithdrawal.new(params[:inventory_withdrawal])

    respond_to do |format|
      if @inventory_withdrawal.save
        format.html { redirect_to @inventory_withdrawal, notice: 'Inventory withdrawal was successfully created.' }
        format.json { render json: @inventory_withdrawal, status: :created, location: @inventory_withdrawal }
      else
        format.html { render action: "new" }
        format.json { render json: @inventory_withdrawal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /inventory_withdrawals/1
  # PUT /inventory_withdrawals/1.json
  def update
    @inventory_withdrawal = InventoryWithdrawal.find(params[:id])

    respond_to do |format|
      if @inventory_withdrawal.update_attributes(params[:inventory_withdrawal])
        format.html { redirect_to @inventory_withdrawal, notice: 'Inventory withdrawal was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @inventory_withdrawal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /inventory_withdrawals/1
  # DELETE /inventory_withdrawals/1.json
  def destroy
    @inventory_withdrawal = InventoryWithdrawal.find(params[:id])
    @inventory_withdrawal.destroy

    respond_to do |format|
      format.html { redirect_to inventory_withdrawals_url }
      format.json { head :ok }
    end
  end
end
