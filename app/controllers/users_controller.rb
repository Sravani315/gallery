class UsersController < ApplicationController
  def new
  	@upload = User.new
  end

  def index
  	@uploads = User.all
  end

  def create
  	
  	@upload =User.new(allowed_params)
    
  	if @upload.save
  		redirect_to @upload
  	else
  		render "new"
  	end   	
  end
  def show
    @upload=User.find(params[:id])
  end

  def destroy
  	@upload = User.find(params[:id])
  	@upload.destroy
  	redirect_to users_path
  end
  private
  	def allowed_params
  		params.require(:user).permit(:name,attachments: [])
  	end
end
