class BoardsController < ApplicationController
  def new
    @organization = Organization.find(params["organization_id"])
  end

  def create
    @board = Board.new(name: params["board"]["name"], about: params["board"]["about"], organization_id: params["organization_id"])
    if Board.exists?(name: params["board"]["name"], about: params["board"]["about"], organization_id: params["organization_id"])
      redirect_to organizations_path, notice: "Board Already exists"
    else
      if @board.save
        @board_access = BoardsAccess.new(user_id: current_user.id, board_id: @board.id, organization_id: params["organization_id"], read: true, write: true, create: true, edit: true, remove: true)
        if @board_access.save
          redirect_to organizations_path, notice: "Board Created Successfully"
        end
      end
    end
  end

  private
  def board_params
    params.require(:board).permit(:name, :about)
  end

end
