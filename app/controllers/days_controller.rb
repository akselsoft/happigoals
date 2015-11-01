class DaysController < ApplicationController
  before_action :set_day, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]
before_action :current_user, only: [:edit, :update, :destroy]

  # GET /days
  # GET /days.json
  def index
    @days = Day.all.order("created_at DESC").paginate(:page => params[:page],:per_page=>4)
  end

  # GET /days/1
  # GET /days/1.json
  def show
  end

  # GET /days/new
  def new
    @day = current_user.days.build
    #Day.new
  end

  # GET /days/1/edit
  def edit
  end

  # POST /days
  # POST /days.json
  def create
  respond_to do |format|
      @day = current_user.days.build(day_params) # Day.new(day_params)
    if @day.save
      format.html { redirect_to @day, notice: 'Day was added.' }
     format.json { render :show, status: :created, location: @day }
    else
      render :new
    end
  end

#    respond_to do |format|
#      if @day.save
#        format.html { redirect_to @day, notice: 'Day was successfully created.' }
#        format.json { render :show, status: :created, location: @day }
#      else
#        format.html { render :new }
#        format.json { render json: @day.errors, status: :unprocessable_entity }
#      end
#    end

  end

  # PATCH/PUT /days/1
  # PATCH/PUT /days/1.json
  def update
    respond_to do |format|
      if @day.update(day_params)
        format.html {redirect_to @day, notice: 'Day was updated'}
        # format.html { redirect_to @day, notice: 'Day was successfully updated.' }
        format.json { render :show, status: :ok, location: @day }

      else
        format.html { render :edit }
        # format.json { render json: @day.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /days/1
  # DELETE /days/1.json
  def destroy
    @day.destroy
    respond_to do |format|
      format.html { redirect_to days_url, notice: 'Day was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_day
      @day = Day.find_by(id: params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def day_params
      params.require(:day).permit(:day,:goal, :good, :bad, :actions, :regret,:image)
    end
end
