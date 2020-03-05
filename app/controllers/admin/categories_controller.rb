class Admin::CategoriesController < ApplicationController
  def index
    @category = Category.all.order(id: :desc)
  end

  def new
    @category = Category.new
  end

  def create
    # ActiveModel::ForbiddenAttributesError < StandardError
    #https://api.rubyonrails.org/classes/ActiveModel/ForbiddenAttributesError.html
    params.permit!
    @category = Category.new(params[:category])

    if @category.save
      redirect_to [:admin, :categories], notice: 'Category created!'
    else
      render :new
    end
  end

end
