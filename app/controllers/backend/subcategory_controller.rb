module Backend
  class SubcategoryController < Backend::ApplicationController
    before_action :subcategory, except: [:index]

    def index
      @subcategories = Product::SubCategory.page(params[:page])
    end

    def new
    end

    def create
      if @subcategory.update_attributes product_sub_category_params
        flash[:success] = 'Subcategory Created'
        redirect_to backend_category_path(@category)
      else
        render action: :new
      end
    end

    def show
    end

    def edit
    end

    def update
      if @subcategory.update_attributes product_sub_category_params
        flash[:success] = 'subcategory Updated'
        redirect_to backend_category_path(@category)
      else
        render action: :edit
      end
    end

    def destroy
      if @subcategory.destroy
        flash[:success] = 'Subcategory Destroyed'
      else
        flash[:error] = 'Subcategory Failed to destroy'
      end

      redirect_to backend_category_path(@category)
    end

    private

    def category
      @category ||= if params[:category_id]
                      Product::Category.find(params[:category_id])
                    else
                      redirect_to backend_category_index_path
                    end
    end

    def subcategory
      @subcategory ||= if params[:id]
                        category.sub_categories.find(params[:id])
                      else
                        category.sub_categories.new
                      end
    end

    def product_sub_category_params
      params.require(:product_sub_category).permit(:name)
    end
  end
end
