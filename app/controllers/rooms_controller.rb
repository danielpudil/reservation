class RoomsController < ApplicationController
  before_action :set_room, only: [:show, :edit, :update, :destroy]

  # GET /rooms
  # GET /rooms.json
  def index
    @rooms = Room.all
  end

  # GET /rooms/1
  # GET /rooms/1.json
  def show
    buildingId = params[:id]
    @room = Room.where(building_id: buildingId)
  end

  # GET /rooms/new
  def new
    @room = Room.new
  end

  # GET /rooms/1/edit
  def edit
  end

  # POST /rooms
  # POST /rooms.json
  def create
    @room = Room.new(room_params)

      if @room.save
        redirect_to admin_rooms_path, notice: 'Room was successfully created.'
      else
        render :new
      end
  end

  # PATCH/PUT /rooms/1
  # PATCH/PUT /rooms/1.json
  def update
      if @room.update(room_params)
        redirect_to admin_rooms_path, notice: 'Room was successfully updated.'
      else
        render :edit
      end
  end

  # DELETE /rooms/1
  # DELETE /rooms/1.json
  def destroy
    @room.destroy
    redirect_to admin_rooms_path, notice: 'Room was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_room
      @room = Room.find_by_id(params[:id])
    end

    def set_building
      @building = Building.where(@room.id)
    end


  # Never trust parameters from the scary internet, only allow the white list through.
    def room_params
      params.require(:room).permit(:title, :code, :building_id)
    end
end
