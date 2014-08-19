class Spree::Admin::Allegro::ProductsController < Spree::Admin::BaseController
  before_action :set_spree_allegro_product, only: [:show, :edit, :update, :destroy]

  # GET /spree/allegro/products
  def index
    @spree_allegro_products = Spree::Allegro::Product.all
  end

  # GET /spree/allegro/products/1
  def show
    puts @spree_allegro_product
  end

  # GET /spree/allegro/products/new
  def new
    @spree_allegro_product = Spree::Allegro::Product.new
  end

  # GET /spree/allegro/products/1/edit
  def edit
    @auction_methods = Spree::Allegro::VariantAuctionMethod.all
  end

  # POST /spree/allegro/products
  def create
    @spree_allegro_product = Spree::Allegro::Product.new(spree_allegro_product_params)

    if @spree_allegro_product.save
      redirect_to edit_admin_product_allegro_product_path(product_id: @product.id), notice: 'Product was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /spree/allegro/products/1
  def update
    if @spree_allegro_product.update(spree_allegro_product_params)
      redirect_to edit_admin_product_allegro_product_path(product_id: @product.id), notice: 'Product was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /spree/allegro/products/1
  def destroy
    @spree_allegro_product.destroy
    redirect_to spree_allegro_products_url, notice: 'Product was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_spree_allegro_product
      @product = Spree::Product.where("id = ? OR slug = ?", params[:product_id], params[:product_id]).first
      @spree_allegro_product = if @product.allegro_product.nil?
         Spree::Allegro::Product.new(product: @product)
      else
        @product.allegro_product
      end
    end

    # Only allow a trusted parameter "white list" through.
    def spree_allegro_product_params
      params.require(:allegro_product).permit(:created_at)
    end
end
