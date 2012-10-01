class NegociosController < ApplicationController
  # GET /negocios
  # GET /negocios.json
  def index
    @negocios = Negocio.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @negocios }
    end
  end

  # GET /negocios/1
  # GET /negocios/1.json
  def show
    @negocio = Negocio.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @negocio }
    end
  end

  # GET /negocios/new
  # GET /negocios/new.json
  def new
    @negocio = Negocio.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @negocio }
    end
  end

  # GET /negocios/1/edit
  def edit
    @negocio = Negocio.find(params[:id])
  end

  # POST /negocios
  # POST /negocios.json
  def create
    @negocio = Negocio.new(params[:negocio])

    respond_to do |format|
      if @negocio.save
        format.html { redirect_to @negocio, notice: 'Negocio was successfully created.' }
        format.json { render json: @negocio, status: :created, location: @negocio }
      else
        format.html { render action: "new" }
        format.json { render json: @negocio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /negocios/1
  # PUT /negocios/1.json
  def update
    @negocio = Negocio.find(params[:id])

    respond_to do |format|
      if @negocio.update_attributes(params[:negocio])
        format.html { redirect_to @negocio, notice: 'Negocio was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @negocio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /negocios/1
  # DELETE /negocios/1.json
  def destroy
    @negocio = Negocio.find(params[:id])
    @negocio.destroy

    respond_to do |format|
      format.html { redirect_to negocios_url }
      format.json { head :no_content }
    end
  end
end
