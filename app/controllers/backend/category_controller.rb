module Backend
  class CategoryController < Backend::ApplicationController
    before_action :category, except: [:index]

    def index
      @categories = Product::Category.page(params[:page])
    end

    def new
    end

    def create
      if @category.update_attributes category_params
        flash[:success] = 'Category Created'
        redirect_to backend_category_index_path
      else
        render action: :new
      end
    end

    def show
      @subcategories = @category.sub_categories
    end

    def edit
    end

    def update
      if @category.update_attributes category_params
        flash[:success] = 'Category Updated'
        redirect_to backend_category_index_path
      else
        render action: :edit
      end
    end

    def destroy
      if @category.destroy
        flash[:success] = 'Category Destroyed'
      else
        flash[:error] = 'Category Failed to destroy'
      end

      redirect_to backend_category_index_path
    end

    private

    def category
      @category ||= if params[:id]
                      Product::Category.find(params[:id])
                    else
                      Product::Category.new
                    end
    end

    def category_params
      params.require(:product_category).permit(:name)
    end
  end
end
