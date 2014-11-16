class CommandsController < ApplicationController

  def create
    @command = Command.new(command_params)
    @command.sent = false
    if @command.save
      respond_to do |format|
        format.json { render json: @command }
      end
    else
      respond_to do |format|
        format.json { render json: @command.errors, status: :unprocessable_entity }
      end
    end
  end


  def get_new
    @commands  = Command.where(user_id: params[:user_id], sent: false).order("created_at")
    @commands.map  do |f|
      f.sent = true
      f.save
    end
    respond_to do |format|
      format.json { render json: @commands }
    end
  end

  private
# Use callbacks to share common setup or constraints between actions.
  def set_action
    @command = Command.find(params[:id])
  end

# Never trust parameters from the scary internet, only allow the white list through.
  def command_params
    params.permit(:user_id, :command_id)
  end

end