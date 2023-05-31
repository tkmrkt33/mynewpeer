class HomeController < ApplicationController
  def index
    @gears = Gear.all.order(id: "DESC")
    @users = User.all
  end
end
