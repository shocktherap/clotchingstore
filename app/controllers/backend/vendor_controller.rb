module Backend
  class VendorController < Backend::ApplicationController
    before_action :merk, except: [:index]

    def index
      @merks = Product::Merk.page(params[:page])
    end

    def new
    end

    def create
      if @merk.update_attributes merk_params
        flash[:success] = 'Merk Created'
        redirect_to backend_vendor_index_path
      else
        render action: :new
      end
    end

    def show
    end

    def edit
    end

    def update
      if @merk.update_attributes merk_params
        flash[:success] = 'Merk Updated'
        redirect_to backend_vendor_index_path
      else
        render action: :edit
      end
    end

    def destroy
      if @merk.destroy
        flash[:success] = 'Merk Destroyed'
      else
        flash[:error] = 'Merk Failed to destroy'
      end

      redirect_to backend_vendor_index_path
    end

    private

    def merk
      @merk ||= if params[:id]
                      Product::Merk.find(params[:id])
                    else
                      Product::Merk.new
                    end
    end

    def merk_params
      params.require(:product_merk).permit(:name)
    end
  end
end
