class BoletosController < ApplicationController
  # GET /boletos
  # GET /boletos.json
  def index
    @boletos = Boleto.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @boletos }
    end
  end

  # GET /boletos/1
  # GET /boletos/1.json
  def show
    @boleto = Boleto.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @boleto }
    end
  end

  # GET /boletos/new
  # GET /boletos/new.json
  def new
    @boleto = Boleto.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @boleto }
    end
  end

  # GET /boletos/1/edit
  def edit
    @boleto = Boleto.find(params[:id])
  end

  # POST /boletos
  # POST /boletos.json
  def create
    @boleto = Boleto.new(params[:boleto])

    respond_to do |format|
      if @boleto.save
        format.html { redirect_to @boleto, notice: 'Boleto was successfully created.' }
        format.json { render json: @boleto, status: :created, location: @boleto }
      else
        format.html { render action: "new" }
        format.json { render json: @boleto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /boletos/1
  # PUT /boletos/1.json
  def update
    @boleto = Boleto.find(params[:id])

    respond_to do |format|
      if @boleto.update_attributes(params[:boleto])
        format.html { redirect_to @boleto, notice: 'Boleto was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @boleto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /boletos/1
  # DELETE /boletos/1.json
  def destroy
    @boleto = Boleto.find(params[:id])
    @boleto.destroy

    respond_to do |format|
      format.html { redirect_to boletos_url }
      format.json { head :no_content }
    end
  end
end
