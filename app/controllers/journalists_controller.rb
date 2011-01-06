class JournalistsController < ApplicationController
  def index
    @journalists = Journalist.all
  end
  
  def show
    @journalist = Journalist.find(params[:id])
  end
  
  def new
    @journalist = Journalist.new
  end
  
  def create
    @journalist = Journalist.new(params[:journalist])
    if @journalist.save
      flash[:notice] = "Successfully created journalist."
      redirect_to @journalist
    else
      render :action => 'new'
    end
  end
  
  def edit
    @journalist = Journalist.find(params[:id])
  end
  
  def update
    @journalist = Journalist.find(params[:id])
    if @journalist.update_attributes(params[:journalist])
      flash[:notice] = "Successfully updated journalist."
      redirect_to @journalist
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @journalist = Journalist.find(params[:id])
    @journalist.destroy
    flash[:notice] = "Successfully destroyed journalist."
    redirect_to journalists_url
  end
end
