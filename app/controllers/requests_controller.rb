class RequestsController < ApplicationController
  before_action :set_request, only: %i[get show edit update]

  def index
    case current_user.role
    when "manager"
      @requests = policy_scope(Request)
    when "tech"
      @requests = policy_scope(Request.where(tech: nil).or(Request.where(tech: current_user)))
    when "citizen"
      @requests = policy_scope(Request.where(citizen: current_user))
    end
    # Find the correct index view to render based on user role
    render view_for_user(:index)
  end

  def show
    # set_request - Substituido pelo before_action
  end

  def new
    @request = Request.new
    authorize @request
  end

  def create
    # Cria um novo request
    @request = Request.new(request_params)
    @request.citizen = current_user
    authorize @request
    @request.save
    redirect_to request_path(@request)
  end

  def edit
    # set_request - Substituido pelo before_action
  end

  def update
    # set_request - Substituido pelo before_action
    @request.update(request_params)
    redirect_to request_path(@request)
  end

  def get
    # set_request - Substituido pelo before_action
    @request.update(tech: current_user)
    @request.update(status: "em andamento")
    redirect_to requests_path
  end

  # def destroy
  #  @request.destroy
  #  redirect_to requests_path
  # end

  private

  # This will return the view file according user logged.
  def view_for_user(view_name)
    "#{view_name}_#{current_user.role}"
  end

  def set_request
    @request = Request.find(params[:id])
    authorize @request
  end

  def request_params
    params.require(:request).permit(:instrument, :service, :location, :status, :description, :report)
  end
end
