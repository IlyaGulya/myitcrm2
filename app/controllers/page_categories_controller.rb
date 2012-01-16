class PageCategoriesController < ApplicationController

  def new
    @page_category = PageCategory.new
  end

  def show
     @page_category = PageCategory.where(["name LIKE ?", "%#{params[:term]}%"]).order('name ASC')
    respond_to do |format|
      format.js  { render :layout => false }
    end
  end
end
