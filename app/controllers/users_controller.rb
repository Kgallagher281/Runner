class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  # Show all users in distance social group
  def index
    @distance = Distance.find_by(id: User.distance_id)
  end

  # GET /users/1
  # Show all of users posts
  def show
    @races = @current_user ? @current_user.races : []
    @distance = Distance.find_by(id: @current_user.distance_id)

  end

  def search
    @results = User.search(params[:search])
  end

  def add_friend
    @friend = Friendship.new(friendship_params)
    @friend.user_id = @current_user.id
    respond_to do |format|
      if @friend.save
      format.html { redirect_to :root, notice: 'Friend was successfully added.' }
      format.json { head :no_content }
      else
        format.html { render :root }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  # Login form
  def login
    @user = User.find_by(email: params[:email])
    if user && user.password == params[:password]
      session[:user_id] = @user.id
      redirect_to :root
    else
      redirect_to back
    end
  end

  # POST /users
  def create
    @user = User.new(user_params)
    respond_to do |format|
      if @user.save
        session[:user_id] = @user.id
        format.html { redirect_to :root, notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:first_name, :last_name, :username, :password, :photo, :distance_id)
    end

    def friendship_params
      params.permit(:friend_id)
    end
end
