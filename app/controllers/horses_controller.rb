class HorsesController < ApplicationController
  def search
    @horses = Horse.where("name LIKE ?", "%#{params[:search_term]}%")
  end

  def show
    @horse = Horse.find(params[:id])
  end
end
