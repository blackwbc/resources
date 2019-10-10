class ResourcesController < ApplicationController
  def list
    @resources = Resource.all
    @resource_types = ResourceType.all
  end

  def show
    @resource = Resource.find(params[:id])
  end

  def new
    @resource_types = ResourceType.all
  end

  def create
    resource = Resource.new(resource_params)

    if resource.save
      redirect_to "/resources"
    else
      flash[:errors] = resource.errors.full_messages
      redirect_to "/resources/new"
    end
  end




  def edit
    @resource = Resource.find(params[:id])
    @resource_types = ResourceType.all
  end

  def update
    @resource = Resource.find(params[:id])
    if @resource.update(resource_params)
      redirect_to "/resources"
    else
      flash[:errors] = @resource.errors.full_messages
      redirect_to "/resources/#{@resource.id}/edit"
    end
  end

  def delete
    @resource = Resource.find(params[:id])
    @resource.destroy
    redirect_to "/resources"
  end

  private
  def resource_params
      params.require(:resource).permit(:név, :kód, :resource_type_id)
  end
end
