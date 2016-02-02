class ContactsController < ApplicationController

  def index
    @contacts = Contact.all
  end

  def new
    @contact = Contact.new
  end

  def create
    @contacts = Contact.all
    @contact = Contact.create(contact_params)
  end

  def show
    @contact = Contact.find(params[:id])
  end

  def edit
    @contact = Contact.find(params[:id])
  end

  def update
    @contacts = Contact.all
    @contact = Contact.find(params[:id])
    @contact.update(contact_params)
  end

  def delete
    @contact = Contact.find(params[:contact_id])
  end

  def destroy
    @contacts = Contact.all
    @contact = Contact.find(params[:id])
    @contact.destroy
  end

  private
  def contact_params
    params.require(:contact).permit(:first_name, :last_name, :address, :city, :state, :zip_code)
  end

end
