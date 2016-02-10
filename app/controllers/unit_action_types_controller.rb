class UnitActionTypesController < ApplicationController
  before_action :set_unit_action_type, only: [:show, :edit, :update, :destroy]

  # GET /unit_action_types
  # GET /unit_action_types.json
  def index
    @unit_action_types = UnitActionType.all
  end

  # GET /unit_action_types/1
  # GET /unit_action_types/1.json
  def show
  end

  # GET /unit_action_types/new
  def new
    @unit_action_type = UnitActionType.new
  end

  # GET /unit_action_types/1/edit
  def edit
  end

  # POST /unit_action_types
  # POST /unit_action_types.json
  def create
    @unit_action_type = UnitActionType.new(unit_action_type_params)

    respond_to do |format|
      if @unit_action_type.save
        format.html { redirect_to @unit_action_type, notice: 'Unit action type was successfully created.' }
        format.json { render :show, status: :created, location: @unit_action_type }
      else
        format.html { render :new }
        format.json { render json: @unit_action_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /unit_action_types/1
  # PATCH/PUT /unit_action_types/1.json
  def update
    respond_to do |format|
      if @unit_action_type.update(unit_action_type_params)
        format.html { redirect_to @unit_action_type, notice: 'Unit action type was successfully updated.' }
        format.json { render :show, status: :ok, location: @unit_action_type }
      else
        format.html { render :edit }
        format.json { render json: @unit_action_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /unit_action_types/1
  # DELETE /unit_action_types/1.json
  def destroy
    @unit_action_type.destroy
    respond_to do |format|
      format.html { redirect_to unit_action_types_url, notice: 'Unit action type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_unit_action_type
      @unit_action_type = UnitActionType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def unit_action_type_params
      params.require(:unit_action_type).permit(:name, :code, :description_template, :results_template)
    end
end
