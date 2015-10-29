class UserSleepsController < ApplicationController
  before_action :set_user_sleep, only: [:show, :edit, :update, :destroy]

  # GET /user_sleeps
  # GET /user_sleeps.json
  def index
    @user_sleeps = UserSleep.all
  end

  # GET /user_sleeps/1
  # GET /user_sleeps/1.json
  def show
  end

  # GET /user_sleeps/new
  def new
    @user_sleep = UserSleep.new
  end

  # GET /user_sleeps/1/edit
  def edit
  end

  # POST /user_sleeps
  # POST /user_sleeps.json
  def create
    @user_sleep = UserSleep.new(user_sleep_params)

    respond_to do |format|
      if @user_sleep.save
        format.html { redirect_to @user_sleep, notice: 'User sleep was successfully created.' }
        format.json { render :show, status: :created, location: @user_sleep }
      else
        format.html { render :new }
        format.json { render json: @user_sleep.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_sleeps/1
  # PATCH/PUT /user_sleeps/1.json
  def update
    respond_to do |format|
      if @user_sleep.update(user_sleep_params)
        format.html { redirect_to @user_sleep, notice: 'User sleep was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_sleep }
      else
        format.html { render :edit }
        format.json { render json: @user_sleep.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_sleeps/1
  # DELETE /user_sleeps/1.json
  def destroy
    @user_sleep.destroy
    respond_to do |format|
      format.html { redirect_to user_sleeps_url, notice: 'User sleep was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_sleep
      @user_sleep = UserSleep.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_sleep_params
      params.require(:user_sleep).permit(:user, :hours, :start, :wake, :quality)
    end
end
