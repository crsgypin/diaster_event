class EventsController < ApplicationController
	before_action :authenticate_user!, :except =>[:index, :show]

  def index
  	

  end

  def new
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
