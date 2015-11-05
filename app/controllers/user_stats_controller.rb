class UserStatsController < ApplicationController
  before_action :set_user_stat, only: [:show, :edit, :update, :destroy]

  # GET /user_stats
  # GET /user_stats.json
  def index
    @user_stats = UserStat.all
  end

  # GET /user_stats/1
  # GET /user_stats/1.json
  def show
  end

  # GET /user_stats/foods
  def foods
    group = params[:group]
    if group == "all"
      @foods = Food.all
    else
      group = FoodGroup.find(group.to_i)
      @foods = group.foods.map {|food| food.name}
    end
    respond_to do |format|
       format.json { render json: @foods }
     end
  end

  def calculate_calories
    food = params[:foods].gsub(/, $/, "")
    total_calories = 0 
    
    if food = Food.find_by(name: food)
      total_calories += food.calories
    end

    respond_to do |format|
       format.json { render json: total_calories }
    end
  end

  # GET /user_stats/new
  def new
    @user_stat = UserStat.new
  end

  # GET /user_stats/1/edit
  def edit
  end

  # POST /user_stats
  # POST /user_stats.json
  def create

    form_data = {
      "calories" => user_stat_params["calories"].to_i,
      "sleep" => user_stat_params["sleep(4i)"].to_i * 60 + user_stat_params["sleep(5i)"].to_i,
      "exercise" => user_stat_params["exercise(4i)"].to_i * 60 + user_stat_params["exercise(5i)"].to_i
    }

    @todays_stat = current_user.user_stats.where('created_at BETWEEN ? AND ?', DateTime.now.beginning_of_day, DateTime.now.end_of_day).first
    
    if @todays_stat
      form_data["calories"] = form_data["calories"] + @todays_stat.calories
      form_data["sleep"] = form_data["sleep"] + @todays_stat.sleep
      form_data["exercise"] = form_data["exercise"] + @todays_stat.exercise

      @todays_stat.update(form_data)
    else 
      @todays_stat = UserStat.new(form_data)
      @todays_stat.user = current_user
    end
    
    respond_to do |format|
      if @user_stat = @todays_stat.save
        format.html { redirect_to @todays_stat, notice: 'User stat was successfully created.' }
        format.json { render :show, status: :created, location: @user_stat }
      else
        format.html { render :new }
        format.json { render json: @todays_stat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_stats/1
  # PATCH/PUT /user_stats/1.json
  def update
    respond_to do |format|
      if @user_stat.update(user_stat_params)
        format.html { redirect_to @user_stat, notice: 'User stat was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_stat }
      else
        format.html { render :edit }
        format.json { render json: @user_stat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_stats/1
  # DELETE /user_stats/1.json
  def destroy
    @user_stat.destroy
    respond_to do |format|
      format.html { redirect_to user_stats_url, notice: 'User stat was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_stat
      @user_stat = UserStat.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_stat_params
      params.require(:user_stat).permit(:belongs_to, :feeling, :date, :sleep, :calories, :exercise)
    end
end
