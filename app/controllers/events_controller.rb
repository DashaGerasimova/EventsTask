class EventsController < ApplicationController
  respond_to :html
  expose(:events) { Event.all }
  expose :event

  before_action :authenticate_user!, except: :index

  def index
  end

  def show
  end

  def new
  end

  def edit
  end

  def create
    current_user.events << event

    event.save
    respond_with event
  end

  def update
    event.update(event_params)
    respond_with event
  end

  def destroy
    event.destroy
    respond_with event
  end

  private

    # Never trust parameters from the scary internet, only allow the white list through.
    def event_params
      params.require(:event).permit(:title, :event_date, :repeat)
    end
end
