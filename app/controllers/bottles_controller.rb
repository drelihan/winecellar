class BottlesController < ApplicationController
  before_filter :authorize, :except => [ 'index' ]  

  # GET /bottles
  # GET /bottles.json
  def index
    @bottles = Bottle.all
    
    @bottle = Bottle.new
    
    # sum up number of bottles
    @number_of_bottles = Bottle.sum(:quantity)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @bottles }
    end
  end

  # GET /bottles/1
  # GET /bottles/1.json
  def show
    @bottle = Bottle.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @bottle }
    end
  end

  # GET /bottles/new
  # GET /bottles/new.json
  def new
    @bottle = Bottle.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @bottle }
    end
  end

  # GET /bottles/1/edit
  def edit
    @bottle = Bottle.find(params[:id])
  end

  # POST /bottles
  # POST /bottles.json
  def create
    @bottle = Bottle.new(params[:bottle])

    respond_to do |format|
      if @bottle.save
        flash[:notice] = "Bottle Added Successfully"
        format.html { redirect_to bottles_url, notice: 'Bottle was successfully created.' }
        format.json { render json: @bottle, status: :created, location: @bottle }
      else
        format.html { render action: "new" }
        format.json { render json: @bottle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /bottles/1
  # PUT /bottles/1.json
  def update
    @bottle = Bottle.find(params[:id])

    respond_to do |format|
      if @bottle.update_attributes(params[:bottle])
        format.html { redirect_to @bottle, notice: 'Bottle was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @bottle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bottles/1
  # DELETE /bottles/1.json
  def destroy
    @bottle = Bottle.find(params[:id])
    @bottle.destroy

    respond_to do |format|
      format.html { redirect_to bottles_url }
      format.json { head :no_content }
    end
  end
end
