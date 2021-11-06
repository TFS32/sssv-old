class RequestsController < ApplicationController
    before_action :set_request, only: [:get, :show, :edit, :update] #, :destroy]

    def index
      # if params[:query].blank?
       
       if current_user.role == "manager"
        @requests = policy_scope(Request)
       elsif  current_user.role == "tech"
        @requests = policy_scope(Request.where(tech_id:nil).or(Request.where(tech_id:current_user.id)))
       elsif current_user.role == "citizen"
        raise StandardError
       end
      # else
      #  @requests = policy_scope(Request.search_requests(params[:query]))
      #  render 'index'
      # end
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
      @request.citizen_id = current_user
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
      @request.update(tech_id:current_user.id)
      @request.update(status: "em andamento")
      redirect_to requests_path
    end
  
    # def destroy
    #  @request.destroy
    #  redirect_to requests_path
    # end
  
    private
  
    def set_request
      @request = Request.find(params[:id])
      authorize @request
    end
  
    def request_params
      params.require(:request).permit(:instrument, :service, :location, :status, :description, :report)
    end
end

