class PromotionsController < ApplicationController
  before_action :set_promotion, only: [:show, :edit, :update, :destroy]

  # GET /promotions
  # GET /promotions.json
  def index
    if params[:fecha]
        @promotions = Promotion.where("fecha LIKE '%"+params[:fecha]+"%'")
        if @promotions.size.zero?
        @promotions = Promotion.all 
        end
      else
       @promotions = Promotion.all    
    end
  end

  # GET /promotions/1
  # GET /promotions/1.json
  def show
  end

  # GET /promotions/new
  def new
    @promotion = Promotion.new

    #@promotion.client = Client.new 

  end

  # GET /promotions/1/edit
  def edit
  end

  # POST /promotions
  # POST /promotions.json
  def create
    @promotion = Promotion.new(promotion_params)

    client= Client.new(client_params)

      #if @sale.client_id.nil?
       #@sale.client = client 
    #else
      #@sale.client.nombre = client.nombre
    #end 

    respond_to do |format|
      if @promotion.save
        format.html { redirect_to @promotion, notice: 'Promotion was successfully created.' }
        format.json { render :show, status: :created, location: @promotion }
      else
        format.html { render :new }
        format.json { render json: @promotion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /promotions/1
  # PATCH/PUT /promotions/1.json
  def update
    respond_to do |format|
      if @promotion.update(promotion_params)
        format.html { redirect_to @promotion, notice: 'Promotion was successfully updated.' }
        format.json { render :show, status: :ok, location: @promotion }
      else
        format.html { render :edit }
        format.json { render json: @promotion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /promotions/1
  # DELETE /promotions/1.json
  def destroy
    @promotion.destroy
    respond_to do |format|
      format.html { redirect_to promotions_url, notice: 'Promotion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_promotion
      @promotion = Promotion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def promotion_params
      params.require(:promotion).permit(:client_id, :employee_id, :fecha, :medioComunicacion, :acuerdo)
    end
        def client_params
      # dice que paramentros quiere 
      # se pone todos los datos que queremos del cliente 
      #poner lo de los detalles de venta 
      # params.require(:client).permit(:id, :Rfc, :nombre, :direccion, :telefono, :email)
    end
end
