class CategoriesController < ApplicationController
  def show
    @category = Category.find(params[:id])
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      redirect_to @category
    else
      @errors = @category.errors
      render :new
    end
  end

  private
  def category_params
    params.require(:category).permit(:name)
  end
end
