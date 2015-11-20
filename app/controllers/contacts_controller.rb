class ContactsController < ApplicationController

  def index
    @contacts = Info.all
  end

  def new

  end

  def create
    @coordinates = Geocoder.coordinates(params[:address])
    @contact = Info.create(first_name: params[:first_name], middle_name: params[:middle_name], last_name: params[:last_name], email: params[:email], phone: params[:phone], bio: params[:bio], latitude: coordinates[0], longitude: coordinates[1])
    flash[:success] = "Contact Created"
    redirect_to "/contacts/#{@contact.id}"
  end

  def contact_result
    
    Info.create(first_name: params[:first_name])

    @contacts = Info.all
  end

  def show
    @contact = Info.find_by(id: params[:id])
  end

  def edit
    @contact = Info.find_by(id: params[:id])
  end

  def update
    @contact = Info.find_by(id: params[:id])
    @contact.update(first_name: params[:first_name], middle_name: params[:middle_name], last_name: params[:last_name], email: params[:email], phone: params[:phone], bio: params[:bio])
    flash[:success] = "Contact Updated"
    redirect_to "/contacts/#{@contact.id}"
  end

  def destroy
    @contact = Info.find_by(id: params[:id])
    @contact.destroy
    flash[:success] = "Contact Deleted"
    redirect_to "/"
  end

end
