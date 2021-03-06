class ContactsController < ApplicationController
  before_action :set_contact, only: [:show, :edit, :update, :destroy]

  # GET /contacts
  # GET /contacts.json
  def index
    @users = User.where.not(id: current_user.id)
    @contacts = Contact.where('sender=?', current_user.id)
  end

  def recieved
    @users = User.where.not(id: current_user.id)
    @contacts = Contact.where('user_id=?', current_user.id)
  end

  # GET /contacts/1
  # GET /contacts/1.json
  def show
    @contact = Contact.find(params[:id])
    
    unless(current_user.id  == @contact.sender)
      @contact.status = true
      @contact.save
    end

  end

  # GET /contacts/new
  def new
    @users = User.where.not(id: current_user.id)
    @contact = Contact.new
  end


  # POST /contacts
  # POST /contacts.json
  def create
    @contact = Contact.new(contact_params)

    respond_to do |format|
      if @contact.save
        format.html { redirect_to @contact, notice: 'Contact was successfully created.' }
        format.json { render :show, status: :created, location: @contact }
      else
        format.html { render :new }
        format.json { render json: @contact.errors, status: :unprocessable_entity }
      end
    end
  end

 
  # DELETE /contacts/1
  # DELETE /contacts/1.json
  def destroy
    @contact.destroy
    respond_to do |format|
      format.html { redirect_to contacts_url, notice: 'Contact was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contact
      @contact = Contact.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contact_params
      params.require(:contact).permit(:user_id , :title, :description, :review).merge(:sender => current_user.id)
    end
end
