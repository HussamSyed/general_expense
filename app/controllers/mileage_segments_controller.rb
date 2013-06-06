class MileageSegmentsController < ApplicationController
  # GET /mileage_segments
  # GET /mileage_segments.json
  def index
    @mileage_segments = MileageSegment.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @mileage_segments }
    end
  end

  # GET /mileage_segments/1
  # GET /mileage_segments/1.json
  def show
    @mileage_segment = MileageSegment.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @mileage_segment }
    end
  end

  # GET /mileage_segments/new
  # GET /mileage_segments/new.json
  def new
    @mileage_segment = MileageSegment.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @mileage_segment }
    end
  end

  # GET /mileage_segments/1/edit
  def edit
    @mileage_segment = MileageSegment.find(params[:id])
  end

  # POST /mileage_segments
  # POST /mileage_segments.json
  def create
    @mileage_segment = MileageSegment.new(params[:mileage_segment])

    respond_to do |format|
      if @mileage_segment.save
        format.html { redirect_to @mileage_segment, notice: 'Mileage segment was successfully created.' }
        format.json { render json: @mileage_segment, status: :created, location: @mileage_segment }
      else
        format.html { render action: "new" }
        format.json { render json: @mileage_segment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /mileage_segments/1
  # PUT /mileage_segments/1.json
  def update
    @mileage_segment = MileageSegment.find(params[:id])

    respond_to do |format|
      if @mileage_segment.update_attributes(params[:mileage_segment])
        format.html { redirect_to @mileage_segment, notice: 'Mileage segment was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @mileage_segment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mileage_segments/1
  # DELETE /mileage_segments/1.json
  def destroy
    @mileage_segment = MileageSegment.find(params[:id])
    @mileage_segment.destroy

    respond_to do |format|
      format.html { redirect_to mileage_segments_url }
      format.json { head :no_content }
    end
  end
end
