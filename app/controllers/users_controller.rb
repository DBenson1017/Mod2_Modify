class UsersController < ApplicationController

def index
    @users = User.all
end

def new
    @user = User.new
end

def create #add validation here 
    @user = User.create(user_params)

    # if user.valid? 
    #     session[:user_id] =  user.id
    #     redirect_to user
    #   else
    #     flash[:errors] = user.errors.full_messages
    #     redirect_to new_user_path
    #   end 
end 

def search 
    Song.search_by_song(input)
    redirect_to new_search_path 
end 

def edit #gets the new form 
    @user = User.find(params[:id])
end

def update #accepts the form form edit 
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(@user)
end

def show #add flash error validation here 
    @user = User.find(params[:id])
  

    # if @user == @current_user
    #     render :show
    #   else 
    #     flash[:error] = "can only see your profile"
    #     redirect_to users_path
    #   end 
end

def destroy
    user = User.find(params[:id])
    user.destroy
end



private

def user_params
    params.require(:user).permit(:username, :password, :name)
end

    
end
