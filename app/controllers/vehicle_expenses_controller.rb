class VehicleExpensesController < ApplicationController
  # GET /vehicle_expenses
  # GET /vehicle_expenses.json
  def index
    @vehicle_expenses = VehicleExpense.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @vehicle_expenses }
    end
  end

  # GET /vehicle_expenses/1
  # GET /vehicle_expenses/1.json
  def show
    @vehicle_expense = VehicleExpense.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @vehicle_expense }
    end
  end

  # GET /vehicle_expenses/new
  # GET /vehicle_expenses/new.json
  def new
    @vehicle_expense = VehicleExpense.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @vehicle_expense }
    end
  end

  # GET /vehicle_expenses/1/edit
  def edit
    @vehicle_expense = VehicleExpense.find(params[:id])
  end

  # POST /vehicle_expenses
  # POST /vehicle_expenses.json
  def create
    @vehicle_expense = VehicleExpense.new(params[:vehicle_expense])

    respond_to do |format|
      if @vehicle_expense.save
        format.html { redirect_to @vehicle_expense, notice: 'Vehicle expense was successfully created.' }
        format.json { render json: @vehicle_expense, status: :created, location: @vehicle_expense }
      else
        format.html { render action: "new" }
        format.json { render json: @vehicle_expense.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /vehicle_expenses/1
  # PUT /vehicle_expenses/1.json
  def update
    @vehicle_expense = VehicleExpense.find(params[:id])

    respond_to do |format|
      if @vehicle_expense.update_attributes(params[:vehicle_expense])
        format.html { redirect_to @vehicle_expense, notice: 'Vehicle expense was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @vehicle_expense.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vehicle_expenses/1
  # DELETE /vehicle_expenses/1.json
  def destroy
    @vehicle_expense = VehicleExpense.find(params[:id])
    @vehicle_expense.destroy

    respond_to do |format|
      format.html { redirect_to vehicle_expenses_url }
      format.json { head :no_content }
    end
  end
end
