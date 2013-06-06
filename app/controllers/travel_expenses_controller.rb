class TravelExpensesController < ApplicationController
  
  # GET /travel_expenses
  # GET /travel_expenses.json
  def index
    @travel_expenses = TravelExpense.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @travel_expenses }
    end
  end

  # GET /travel_expenses/1
  # GET /travel_expenses/1.json
  def show
    @travel_expense = TravelExpense.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @travel_expense }
    end
  end

  # GET /travel_expenses/new
  # GET /travel_expenses/new.json
  def new
    @travel_expense = TravelExpense.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @travel_expense }
    end
  end

  # GET /travel_expenses/1/edit
  def edit
    @travel_expense = TravelExpense.find(params[:id])
  end

  # POST /travel_expenses
  # POST /travel_expenses.json
  def create
    @travel_expense = TravelExpense.new(params[:travel_expense])

    respond_to do |format|
      if @travel_expense.save
        format.html { redirect_to @travel_expense, notice: 'Travel expense was successfully created.' }
        format.json { render json: @travel_expense, status: :created, location: @travel_expense }
      else
        format.html { render action: "new" }
        format.json { render json: @travel_expense.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /travel_expenses/1
  # PUT /travel_expenses/1.json
  def update
    @travel_expense = TravelExpense.find(params[:id])

    respond_to do |format|
      if @travel_expense.update_attributes(params[:travel_expense])
        format.html { redirect_to @travel_expense, notice: 'Travel expense was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @travel_expense.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /travel_expenses/1
  # DELETE /travel_expenses/1.json
  def destroy
    @travel_expense = TravelExpense.find(params[:id])
    @travel_expense.destroy

    respond_to do |format|
      format.html { redirect_to travel_expenses_url }
      format.json { head :no_content }
    end
  end
end
