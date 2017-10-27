class DistancesController < ApplicationController
  before_action :set_distance, only: [:show, :edit, :update, :destroy]

  # GET /distances/1
  def show
    @users = User.where( distance_id: @distance.id)
    @distance = Distance.find_by(id: @current_user.distance_id)
  end

  # POST /distances
  # POST /distances.json
  def create
    @distance = Distance.new(distance_params)

    respond_to do |format|
      if @distance.save
        format.html { redirect_to @distance, notice: 'Distance was successfully created.' }
        format.json { render :show, status: :created, location: @distance }
      else
        format.html { render :new }
        format.json { render json: @distance.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /distances/1
  # PATCH/PUT /distances/1.json
  def update
    respond_to do |format|
      if @distance.update(distance_params)
        format.html { redirect_to @distance, notice: 'Distance was successfully updated.' }
        format.json { render :show, status: :ok, location: @distance }
      else
        format.html { render :edit }
        format.json { render json: @distance.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /distances/1
  # DELETE /distances/1.json
  def destroy
    @distance.destroy
    respond_to do |format|
      format.html { redirect_to distances_url, notice: 'Distance was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_distance
      @distance = Distance.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def distance_params
      params.require(:distance).permit(:description)
    end
end
