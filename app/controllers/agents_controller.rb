class AgentsController < ApplicationController
  before_action :set_agent, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    if is_admin?
    @agents = Agent.all
    respond_with(@agents)
  else
    redirect_to "/"
 
  end
    
  end

  def show
     if (@agent.email == current_user.email )|| is_admin?
            respond_with(@agent)    
    else
      redirect_to error_acess_denied_path
      #redirect_to '/'
     end
    
  end

  def new
    unless has_profile?
    @agent = Agent.new
    respond_with(@agent)
  else
    redirect_to error_acess_denied_path
   # redirect_to '/'
  end
  end

  def edit
    #if !(is_admin? )
    if !(current_user.email==Agent.find_by_id(params[:id]).email )
      redirect_to error_acess_denied_path
    #redirect_to '/'
   end
  end

  def create
    @agent = Agent.new(agent_params)
    @agent.save
    respond_with(@agent)
  end

  def update
    @agent.update(agent_params)
    respond_with(@agent)
  end

  def destroy
    if (current_user.email==Agent.find(params[:id]).email )|| is_admin?
    @agent.destroy
    respond_with(@agent)
    end
  end

  private
    def set_agent 
     @agent = Agent.find(params[:id]) #if Agent.find_by_id(params[:id]).present? else  redirect_to error_not_found_path #redirect_to "/"
     end

    def agent_params
      params.require(:agent).permit(:name, :email, :image, :country, :city, :street, :birth)
    end
end
