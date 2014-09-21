module Backend
  class ProductController < Backend::ApplicationController
    before_action :product, except: [:index]

    def index
      @products = Product::Product.page(params[:page])
    end

    def new
    end

    def create
      if @product.update_attributes product_params
        flash[:success] = 'Product Created'
        redirect_to backend_product_index_path
      else
        render action: :new
      end
    end

    def show
    end

    def edit
    end

    def update
      if @product.update_attributes product_params
        flash[:success] = 'Product Updated'
        redirect_to backend_product_index_path
      else
        render action: :edit
      end
    end

    def destroy
      if @product.destroy
        flash[:success] = 'Product Destroyed'
      else
        flash[:error] = 'Product Failed to destroy'
      end

      redirect_to backend_product_index_path
    end

    private

    def product
      @product ||= if params[:id]
                      Product::Product.find(params[:id])
                    else
                      Product::Product.new
                    end
    end

    def product_params
      params.require(:product_product).permit(
        :name, :code, :keywords, :short_description, :description, :active, :unit_price, :unit_cost, :tax, :texture,
        merk_attributes: [:id],
        sub_category_attributes: [:id]
      )
    end
  end
end
