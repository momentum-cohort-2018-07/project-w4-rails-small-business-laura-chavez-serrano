
class ProductsController < ApplicationController
    def index
        
        # @productsa = fill_product
        @productsa = Convert.all.where("quantity > 0")
         @products = @productsa.sort_by { |h| h.category }
    end


   #details of product
     def show
        
        @product = Convert.find{|p| p.id == params[:id].to_i}
     end

     private

     def params_convert
            params.require(:convert).permit(:category)
     end
    

    
   
end
