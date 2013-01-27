class MaquinasController < ApplicationController
  # GET /maquinas
  # GET /maquinas.json
  def index
    @maquinas = Maquina.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @maquinas }
    end
  end

  # GET /maquinas/1
  # GET /maquinas/1.json
  def show
    @maquina = Maquina.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @maquina }
    end
  end

  # GET /maquinas/new
  # GET /maquinas/new.json
  def new
    @maquina = Maquina.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @maquina }
    end
  end

  # GET /maquinas/1/edit
  def edit
    @maquina = Maquina.find(params[:id])
  end

  # POST /maquinas
  # POST /maquinas.json
  def create
    @maquina = Maquina.new(params[:maquina])

    respond_to do |format|
      if @maquina.save
        format.html { redirect_to @maquina, notice: 'Maquina was successfully created.' }
        format.json { render json: @maquina, status: :created, location: @maquina }
      else
        format.html { render action: "new" }
        format.json { render json: @maquina.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /maquinas/1
  # PUT /maquinas/1.json
  def update
    @maquina = Maquina.find(params[:id])

    respond_to do |format|
      if @maquina.update_attributes(params[:maquina])
        format.html { redirect_to @maquina, notice: 'Maquina was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @maquina.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /maquinas/1
  # DELETE /maquinas/1.json
  def destroy
    @maquina = Maquina.find(params[:id])
    @maquina.destroy

    respond_to do |format|
      format.html { redirect_to maquinas_url }
      format.json { head :no_content }
    end
  end
end
