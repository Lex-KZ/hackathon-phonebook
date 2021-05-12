class ContactsController < ApplicationController
  before_action :authenticate_user! 
  before_action :set_contact, only: %i[:show, :edit, :update, :destroy]
  # only: [:restricted]
  
  def index
    @contacts = current_user.contacts.all
    # if current_user
    #   @contacts = current_user.contacts
    # end
  end
  
  def create
    @contact = current_user.contacts.build(contact_params)

    respond_to do |format|
      if @contact.save
        format.html { redirect_to @contact, notice: "Contact was successfully created." }
        format.json { render :show, status: :created, location: @contact }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @contact.errors, status: :unprocessable_entity }
      end
    end
    # redirect_to contacts_path
  end

  def new
    @contact = Contact.new
  end

  def edit
  end

  def show
    @contact = current_user.contacts.all.find(params[:id])
  end

  def update
    @contact = current_user.contacts.all.find(params[:id])
    respond_to do |format|
      if @contact.update(contact_params)
        format.html { redirect_to @contact, notice: "Contact was successfully updated." }
        format.json { render :show, status: :ok, location: @contact }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @contact.errors, status: :unprocessable_entity }
      end
    end
    redirect_to contacts_path
  end

  def destroy
    @contact = current_user.contacts.all.find(params[:id])
    @contact.destroy
    respond_to do |format|
      format.html { redirect_to contacts_url, notice: "Contact was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def restricted
  end

  private
    def set_contact
      @contact = current_user.contacts.all.find(params[:id])
    end

    def contact_params
      params.require(:contact).permit(:first_name, :last_name, :nickname, :phone_number, :email)
    end
end
