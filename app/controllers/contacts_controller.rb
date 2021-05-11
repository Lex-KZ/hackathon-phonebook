class ContactsController < ApplicationController
  before_action :authenticate_user!, only: [:restricted]

  def index
  end
  
  def create
  end

  def new
  end

  def edit
  end

  def show
  end

  def update
  end

  def destroy
  end

  def restricted
  end

  private
    def params
      
    end
end
