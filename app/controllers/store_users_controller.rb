class StoreUsersController < ApplicationController
  before_action :set_store_user, only: [:show, :edit, :update, :destroy]

  # GET /store_users
  # GET /store_users.json
  def index
    @store_users = StoreUser.all
  end

  # GET /store_users/1
  # GET /store_users/1.json
  def show
  end

  # GET /store_users/new
  def new
    @store_user = StoreUser.new
  end

  # GET /store_users/1/edit
  def edit
  end

  # POST /store_users
  # POST /store_users.json
  def create
    @store_user = StoreUser.new(store_user_params)

    respond_to do |format|
      if @store_user.save
        format.html { redirect_to @store_user, notice: 'Store user was successfully created.' }
        format.json { render :show, status: :created, location: @store_user }
      else
        format.html { render :new }
        format.json { render json: @store_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /store_users/1
  # PATCH/PUT /store_users/1.json
  def update
    respond_to do |format|
      if @store_user.update(store_user_params)
        format.html { redirect_to @store_user, notice: 'Store user was successfully updated.' }
        format.json { render :show, status: :ok, location: @store_user }
      else
        format.html { render :edit }
        format.json { render json: @store_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /store_users/1
  # DELETE /store_users/1.json
  def destroy
    @store_user.destroy
    respond_to do |format|
      format.html { redirect_to store_users_url, notice: 'Store user was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_store_user
      @store_user = StoreUser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def store_user_params
      params.require(:store_user).permit(:store_id, :user_id)
    end
end
