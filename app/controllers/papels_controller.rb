class PapelsController < ApplicationController
  # GET /papels
  # GET /papels.json
  def index
    @papels = Papel.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @papels }
    end
  end

  # GET /papels/1
  # GET /papels/1.json
  def show
    @papel = Papel.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @papel }
    end
  end

  # GET /papels/new
  # GET /papels/new.json
  def new
    @papel = Papel.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @papel }
    end
  end

  # GET /papels/1/edit
  def edit
    @papel = Papel.find(params[:id])
  end

  # POST /papels
  # POST /papels.json
  def create
    @papel = Papel.new(params[:papel])

    respond_to do |format|
      if @papel.save
        format.html { redirect_to @papel, notice: 'Papel was successfully created.' }
        format.json { render json: @papel, status: :created, location: @papel }
      else
        format.html { render action: "new" }
        format.json { render json: @papel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /papels/1
  # PUT /papels/1.json
  def update
    @papel = Papel.find(params[:id])

    respond_to do |format|
      if @papel.update_attributes(params[:papel])
        format.html { redirect_to @papel, notice: 'Papel was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @papel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /papels/1
  # DELETE /papels/1.json
  def destroy
    @papel = Papel.find(params[:id])
    @papel.destroy

    respond_to do |format|
      format.html { redirect_to papels_url }
      format.json { head :no_content }
    end
  end
end
