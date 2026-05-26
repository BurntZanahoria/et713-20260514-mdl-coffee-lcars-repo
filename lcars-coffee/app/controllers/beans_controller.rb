class BeansController < ApplicationController

  def analysis
    @beans = Bean.all
    @suppliers = Supplier.all
  end


  before_action :set_bean, only: [:show, :edit, :update, :destroy]

  def index
    @beans = Bean.all
  end

  def show
  end

  def new
    @bean = Bean.new
  end

  def create
    @bean = Bean.new(bean_params)

    if @bean.save
      redirect_to @bean, notice: "Bean created successfully."
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @bean.update(bean_params)
      redirect_to @bean, notice: "Bean updated successfully."
    else
      render :edit
    end
  end

  def destroy
    @bean.destroy
    redirect_to beans_path, notice: "Bean deleted successfully."
  end

  private

  def set_bean
    @bean = Bean.find(params[:id])
  end

  def bean_params
    params.require(:bean).permit(
      :product_name,
      :bean_type,
      :price,
      :description,
      :quantity,
      :supplier_id
    )
  end
end
