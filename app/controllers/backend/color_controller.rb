module Backend
  class ColorController < Backend::ApplicationController
    before_action :color, except: [:index]

    def index
      @colors = Product::ColorList.page(params[:page])
    end

    def new
    end

    def create
      if @color.update_attributes color_params
        flash[:success] = 'Color Created'
        redirect_to backend_color_index_path
      else
        render action: :new
      end
    end

    def show
    end

    def edit
    end

    def update
      if @color.update_attributes color_params
        flash[:success] = 'Color Updated'
        redirect_to backend_color_index_path
      else
        render action: :edit
      end
    end

    def destroy
      if @color.destroy
        flash[:success] = 'Color Destroyed'
      else
        flash[:error] = 'Color Failed to destroy'
      end

      redirect_to backend_color_index_path
    end

    private

    def color
      @color ||= if params[:id]
                      Product::ColorList.find(params[:id])
                    else
                      Product::ColorList.new
                    end
    end

    def color_params
      params.require(:product_color_list).permit(:name, :hex)
    end
  end
end
