class BuildingsController < ApplicationController
  before_action :set_building, :set_room, only: [:show, :edit, :update, :destroy]

  # GET /buildings
  def index
    @buildings = Building.all
  end

  # GET /buildings/1
  def show
  end

  # GET /buildings/new
  def new
    @building = Building.new
  end

  # GET /buildings/1/edit
  def edit
  end

  # POST /buildings
  def create
    @building = Building.new(building_params)
      if @building.save
        redirect_to admin_buildings_path, notice: 'Building was successfully created.'
      else
        redirect_to new_admin_building_path, notice: 'Building wasnt created.'
      end
  end

  # PATCH/PUT /buildings/1
  def update
      if @building.update(building_params)
        redirect_to admin_buildings_path, notice: 'Building was successfully updated.'
      else
        render :edit
      end
  end

  # GET /buildings/1/today
  def today
    @date = Date.today.strftime('%d.%m.%Y')
    @room = Room.where(building_id: params[:building_id])
    @id = params[:building_id]
    render :today, notice: 'Building was successfully destroyed.'
  end

  # DELETE /buildings/1
  def destroy
    @building.destroy
    redirect_to admin_buildings_path, notice: 'Building was successfully destroyed.'
  end

  private
    def set_building
      @building = Building.find(params[:id])
    end

    def set_room
      @rooms = Room.all
    end

    def building_params
      params.require(:building).permit(:title, :code, :address)
    end

    def any_building
      if Building.all == nil
        @buildings = [{}]
      end
    end
end
