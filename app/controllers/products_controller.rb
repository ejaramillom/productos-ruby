class ProductsController < ApplicationController

	def index
	  @products = Product.all
	end

	def new
	  @product = Product.new
	end

	def create
	  @product = Product.new(product_params)
	  
	  # Si se guarda el registro enviamos un mensaje al usuario para que sepa que quedo bien almacenado
	  if @product.save
	    redirect_to products_path, notice: "El producto fue almacenado exitosamente"
	  else
	    render :new
	  end
	end

	def edit
	  @product = Product.find(params[:id])
	end

	def update
	  product = Product.find(params[:id])
	  if product.update(product_params)
	    redirect_to products_path, notice: "El producto ha sido modificado con exito"
	  else
	    render :edit
	  end
	end

	def destroy
		# No le ponemos @ a product porque esta variable no la necesitamos mostrar en ninguna vista
		product = Product.find(params[:id])
		product.destroy
		redirect_to products_path, notice: "El producto fue eliminado con exito"
	end

	private
	  def product_params
	    params.require(:product).permit(:name, :price)
	  end

end
