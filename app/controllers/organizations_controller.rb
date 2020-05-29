class OrganizationsController < ApplicationController

  def index
    @organizations = current_user.organizations
  end

  def new
    @organization = Organization.new
    @options = ["individual", "business"]
  end

  def create
    @organization = Organization.new(organization_params)
    if Organization.exists?(organization_params)
      redirect_to organizations_path, notice: "Organization Already Exists"
    else
      if @organization.save
        @organization_access = OrganizationAccess.new(organization_id: @organization.id, user_id: current_user.id, isadmin: true, ismanager: true, ismember: true, isguest: false)
        if @organization_access.save
          redirect_to root_path
        end
      end
    end
  end

  def show
    @organization = Organization.find(params[:id])
    @organization_access_level = OrganizationAccess.find_by(organization_id: params[:id], user_id: current_user.id) 
    if BoardsAccess.exists?(organization_id: @organization.id, user_id: current_user.id)
      @board_access_exists = true
    else
      @board_access_exists = true
    end
  end

  private
  def organization_params
    params.require(:organization).permit(:name, :organization_type)
  end

end
