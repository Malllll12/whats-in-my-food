class FoodsController < ApplicationController
  def index
    @foods = FoodFacade.find_foods(params[:q])
    @total = FoodFacade.total_hits(params[:q])
  end
end
