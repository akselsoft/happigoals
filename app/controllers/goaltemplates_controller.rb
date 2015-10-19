class GoaltemplatesController < ApplicationController
  before_action :set_goaltemplate, only: [:show, :edit, :update, :destroy]

  # GET /goaltemplates
  # GET /goaltemplates.json
  def index
    @goaltemplates = Goaltemplate.all
  end

  # GET /goaltemplates/1
  # GET /goaltemplates/1.json
  def show
  end

  # GET /goaltemplates/new
  def new
    @goaltemplate = Goaltemplate.new
  end

  # GET /goaltemplates/1/edit
  def edit
  end

  # POST /goaltemplates
  # POST /goaltemplates.json
  def create
    @goaltemplate = Goaltemplate.new(goaltemplate_params)

    respond_to do |format|
      if @goaltemplate.save
        format.html { redirect_to @goaltemplate, notice: 'Goaltemplate was successfully created.' }
        format.json { render :show, status: :created, location: @goaltemplate }
      else
        format.html { render :new }
        format.json { render json: @goaltemplate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /goaltemplates/1
  # PATCH/PUT /goaltemplates/1.json
  def update
    respond_to do |format|
      if @goaltemplate.update(goaltemplate_params)
        format.html { redirect_to @goaltemplate, notice: 'Goaltemplate was successfully updated.' }
        format.json { render :show, status: :ok, location: @goaltemplate }
      else
        format.html { render :edit }
        format.json { render json: @goaltemplate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /goaltemplates/1
  # DELETE /goaltemplates/1.json
  def destroy
    @goaltemplate.destroy
    respond_to do |format|
      format.html { redirect_to goaltemplates_url, notice: 'Goaltemplate was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_goaltemplate
      @goaltemplate = Goaltemplate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def goaltemplate_params
      params.require(:goaltemplate).permit(:goal, :area)
    end
end
