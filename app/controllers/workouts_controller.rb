class WorkoutsController < ActionController::Base
  def index
    @workouts = Workout.all
  end

  def show
    @workout = Workout.find(params[:id])
  end

  def new
    @workout = Workout.new
  end

  def create
    @workout = Workout.new(workout_params)

    if @workout.save
      redirect_to @workout
    else
      render 'new'
    end
  end

  private

  def workout_params
    params.require(:workout).permit(:title, :description, :date, :type, :calories)
  end
end
