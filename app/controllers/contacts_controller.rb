class ContactsController < ApplicationController
  before_action :authenticate_user!, only: [:restricted]

  def index
  end
  
  def create
    @contact = Contact.create(contact_params)
    redirect_to contacts_path
  end

  def new
    @contact = Contact.new
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
    def contact_params
      params.require(:contact).permit(:first_name, :last_name, :nickname, :phone_number, :email)
    end
end
