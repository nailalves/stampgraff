class OsController < ApplicationController
  # GET /os
  # GET /os.json
  def index
    @os = Os.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @os }
    end
  end

  # GET /os/1
  # GET /os/1.json
  def show
    @o = Os.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @o }
    end
  end

  # GET /os/new
  # GET /os/new.json
  def new
    @o = Os.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @o }
    end
  end

  # GET /os/1/edit
  def edit
    @o = Os.find(params[:id])
  end

  # POST /os
  # POST /os.json
  def create
    @o = Os.new(params[:o])

    respond_to do |format|
      if @o.save
        format.html { redirect_to @o, notice: 'Os was successfully created.' }
        format.json { render json: @o, status: :created, location: @o }
      else
        format.html { render action: "new" }
        format.json { render json: @o.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /os/1
  # PUT /os/1.json
  def update
    @o = Os.find(params[:id])

    respond_to do |format|
      if @o.update_attributes(params[:o])
        format.html { redirect_to @o, notice: 'Os was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @o.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /os/1
  # DELETE /os/1.json
  def destroy
    @o = Os.find(params[:id])
    @o.destroy

    respond_to do |format|
      format.html { redirect_to os_index_url }
      format.json { head :no_content }
    end
  end
end
