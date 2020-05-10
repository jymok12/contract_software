class RoomController < ApplicationController
def index
    @rooms = Room.all()
end

def show
    @room= Room.find(params[:id])
end

def new
    @room = Room.new
end

def create
    @room = Room.new(room_params)
end

private
    def room_params
        params.require(:room).permit(:customer)
    end
end
