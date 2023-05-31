class GearsController < ApplicationController
  def index
    @gears = Gear.all.order(id: "DESC")
  end

  def show
    @gear = Gear.find(params[:id])
  end

  def new
    @gear = Gear.new
  end
  

  def create
    @gear = current_user.gears.build(gear_params)
    @gear.user_id = current_user.id
    @gear.save
    redirect_to gear_path(@gear)
  end

  def edit
    @gear = Gear.find(params[:id])
  end

  def update
    @gear = Gear.find(params[:id])
    @gear.update(gear_params)
    redirect_to gear_path(@gear)
  end

  def destroy
    gear = Gear.find(params[:id])
    gear.destroy
    redirect_to gears_path
  end

  
  private
    def gear_params
       params.require(:gear).permit(:title, :body, :image, :comment)
    end
end




