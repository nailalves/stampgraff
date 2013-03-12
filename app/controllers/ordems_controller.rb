class OrdemsController < ApplicationController
	before_filter :authenticate_user! 
	layout false, :only=> [:versao_cliente]
	autocomplete :cliente, :name

  # GET /ordems
  # GET /ordems.json
  def index
    @ordems = Ordem.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @ordems }
    end
  end

  # GET /ordems/1
  # GET /ordems/1.json
  def show
		@total=0;
    @ordem = Ordem.find(params[:id])
		@servico = Servico.new
		@servicos = Servico.where(:ordem_id => @ordem.id)
		@servicos.each do |servico|
			@total = @total + servico.valor
		end
		@total.to_s
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @ordem }
    end	
	end
  # GET /ordems/new
  # GET /ordems/new.json
  def new
    @ordem = Ordem.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @ordem }
    end
  end

  # GET /ordems/1/edit
  def edit
    @ordem = Ordem.find(params[:id])
  end

  # POST /ordems
  # POST /ordems.json
  def create
    @ordem = Ordem.new(params[:ordem])

    respond_to do |format|
      if @ordem.save
        format.html { redirect_to @ordem, notice: 'Ordem was successfully created.' }
        format.json { render json: @ordem, status: :created, location: @ordem }
      else
        format.html { render action: "new" }
        format.json { render json: @ordem.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /ordems/1
  # PUT /ordems/1.json
  def update
    @ordem = Ordem.find(params[:id])

    respond_to do |format|
      if @ordem.update_attributes(params[:ordem])
        format.html { redirect_to @ordem, notice: 'Ordem was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @ordem.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ordems/1
  # DELETE /ordems/1.json
  def destroy
    @ordem = Ordem.find(params[:id])
    @ordem.destroy

    respond_to do |format|
      format.html { redirect_to ordems_url }
      format.json { head :no_content }
    end
  end

	def versao_cliente
		@ordem = Ordem.find(params[:id])
		#@servico = Servico.new
		#@servicos = Servico.where(:ordem_id => @ordem.id)

    respond_to do |format|
      format.html # relatorio.html.erb
      format.json { render json: @ordem }
    end	
	end

	def versao_empresa
		@ordem = Ordem.find(params[:id])
		#@servico = Servico.new
		#@servicos = Servico.where(:ordem_id => @ordem.id)

    respond_to do |format|
      format.html # relatorio.html.erb
      format.json { render json: @ordem }
    end	
	end

	def visualizacao
		@ordem = Ordem.find(params[:id])
		@servico = Servico.new
		@servicos = Servico.where(:ordem_id => @ordem.id)

    respond_to do |format|
      format.html # relatorio.html.erb
      format.json { render json: @ordem }
    end	
	end
end
