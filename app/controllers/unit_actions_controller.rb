class UnitActionsController < ApplicationController
  before_action :set_unit_action, only: [:show, :edit, :update, :destroy]

  # GET /unit_actions
  # GET /unit_actions.json
  def index
    @unit_actions = UnitAction.all
  end

  # GET /unit_actions/1
  # GET /unit_actions/1.json
  def show
  end

  # GET /unit_actions/new
  def new
    @unit_action = UnitAction.new
  end

  # GET /unit_actions/1/edit
  def edit
  end

  # POST /unit_actions
  # POST /unit_actions.json
  def create
    @unit_action = UnitAction.new(unit_action_params)

    respond_to do |format|
      if @unit_action.save
        format.html { redirect_to @unit_action, notice: 'Unit action was successfully created.' }
        format.json { render :show, status: :created, location: @unit_action }
      else
        format.html { render :new }
        format.json { render json: @unit_action.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /unit_actions/1
  # PATCH/PUT /unit_actions/1.json
  def update
    respond_to do |format|
      if @unit_action.update(unit_action_params)
        format.html { redirect_to @unit_action, notice: 'Unit action was successfully updated.' }
        format.json { render :show, status: :ok, location: @unit_action }
      else
        format.html { render :edit }
        format.json { render json: @unit_action.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /unit_actions/1
  # DELETE /unit_actions/1.json
  def destroy
    @unit_action.destroy
    respond_to do |format|
      format.html { redirect_to unit_actions_url, notice: 'Unit action was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_unit_action
      @unit_action = UnitAction.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def unit_action_params
      params.require(:unit_action).permit(:name, :code, :description, :position_state_id, :unit_action_type_id, :phase, :cost)
    end
end
