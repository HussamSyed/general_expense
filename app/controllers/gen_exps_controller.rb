class GenExpsController < ApplicationController


  # GET /gen_exps
  # GET /gen_exps.json
  def index
    @gen_exps = GenExp.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @gen_exps }
    end
  end

  # GET /gen_exps/1
  # GET /gen_exps/1.json
  def show
    @gen_exp = GenExp.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @gen_exp }
    end
  end

  # GET /gen_exps/new
  # GET /gen_exps/new.json
  def new
    @gen_exp = GenExp.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @gen_exp }
    end
  end

  # GET /gen_exps/1/edit
  def edit
    @gen_exp = GenExp.find(params[:id])
  end

  # POST /gen_exps
  # POST /gen_exps.json
  def create
    @gen_exp = GenExp.new(params[:gen_exp])

    respond_to do |format|
      if @gen_exp.save
        format.html { redirect_to @gen_exp, notice: 'Gen exp was successfully created.' }
        format.json { render json: @gen_exp, status: :created, location: @gen_exp }
      else
        format.html { render action: "new" }
        format.json { render json: @gen_exp.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /gen_exps/1
  # PUT /gen_exps/1.json
  def update
    @gen_exp = GenExp.find(params[:id])

    respond_to do |format|
      if @gen_exp.update_attributes(params[:gen_exp])
        format.html { redirect_to @gen_exp, notice: 'Gen exp was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @gen_exp.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gen_exps/1
  # DELETE /gen_exps/1.json
  def destroy
    @gen_exp = GenExp.find(params[:id])
    @gen_exp.destroy

    respond_to do |format|
      format.html { redirect_to gen_exps_url }
      format.json { head :no_content }
    end
  end
end
