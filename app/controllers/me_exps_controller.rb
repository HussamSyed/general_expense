class MeExpsController < ApplicationController
  # GET /me_exps
  # GET /me_exps.json
  def index
    @me_exps = MeExp.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @me_exps }
    end
  end

  # GET /me_exps/1
  # GET /me_exps/1.json
  def show
    @me_exp = MeExp.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @me_exp }
    end
  end

  # GET /me_exps/new
  # GET /me_exps/new.json
  def new
    @me_exp = MeExp.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @me_exp }
    end
  end

  # GET /me_exps/1/edit
  def edit
    @me_exp = MeExp.find(params[:id])
  end

  # POST /me_exps
  # POST /me_exps.json
  def create
    @me_exp = MeExp.new(params[:me_exp])

    respond_to do |format|
      if @me_exp.save
        format.html { redirect_to @me_exp, notice: 'Me exp was successfully created.' }
        format.json { render json: @me_exp, status: :created, location: @me_exp }
      else
        format.html { render action: "new" }
        format.json { render json: @me_exp.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /me_exps/1
  # PUT /me_exps/1.json
  def update
    @me_exp = MeExp.find(params[:id])

    respond_to do |format|
      if @me_exp.update_attributes(params[:me_exp])
        format.html { redirect_to @me_exp, notice: 'Me exp was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @me_exp.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /me_exps/1
  # DELETE /me_exps/1.json
  def destroy
    @me_exp = MeExp.find(params[:id])
    @me_exp.destroy

    respond_to do |format|
      format.html { redirect_to me_exps_url }
      format.json { head :no_content }
    end
  end
end
