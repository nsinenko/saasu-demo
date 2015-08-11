class ContactsController < ApplicationController
  def index
    @contacts = Saasu::Contact.all
  end

  def create
    Saasu::Contact.create(format_params)
    redirect_to contacts_path
  end

  def update
    Saasu::Contact.find(params[:id]).update(format_params)
    redirect_to contacts_path
  end

  def new

  end

  def edit
    @contact = Saasu::Contact.find(params[:id])
  end

  def destroy
    Saasu::Contact.delete(params[:id])
    redirect_to contacts_path
  end

  private
  def format_params
    params['contact'].map do |k,v|
      [k.classify, v]
    end.to_h
  end
end
