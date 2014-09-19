module Backend
  class SizeController < Backend::ApplicationController
    before_action :size, except: [:index]

    def index
      @sizes = Product::Size.page(params[:page])
    end

    def new
    end

    def create
      if @size.update_attributes size_params
        flash[:success] = 'size Created'
        redirect_to backend_size_index_path
      else
        render action: :new
      end
    end

    def show
    end

    def edit
    end

    def update
      if @size.update_attributes size_params
        flash[:success] = 'size Updated'
        redirect_to backend_size_index_path
      else
        render action: :edit
      end
    end

    def destroy
      if @size.destroy
        flash[:success] = 'size Destroyed'
      else
        flash[:error] = 'size Failed to destroy'
      end

      redirect_to backend_size_index_path
    end

    private

    def size
      @size ||= if params[:id]
                      Product::Size.find(params[:id])
                    else
                      Product::Size.new
                    end
    end

    def size_params
      params.require(:product_size).permit(:name)
    end
  end
end
