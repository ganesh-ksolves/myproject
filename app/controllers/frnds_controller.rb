class FrndsController < ApplicationController
  before_action :set_frnd, only: %i[ show edit update destroy ]

  # GET /frnds or /frnds.json
  def index
    @frnds = Frnd.all
  end

  # GET /frnds/1 or /frnds/1.json
  def show
  end

  # GET /frnds/new
  def new
    @frnd = Frnd.new
  end

  # GET /frnds/1/edit
  def edit
  end

  # POST /frnds or /frnds.json
  def create
    @frnd = Frnd.new(frnd_params)

    respond_to do |format|
      if @frnd.save
        format.html { redirect_to frnd_url(@frnd), notice: "Frnd was successfully created." }
        format.json { render :show, status: :created, location: @frnd }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @frnd.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /frnds/1 or /frnds/1.json
  def update
    respond_to do |format|
      if @frnd.update(frnd_params)
        format.html { redirect_to frnd_url(@frnd), notice: "Frnd was successfully updated." }
        format.json { render :show, status: :ok, location: @frnd }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @frnd.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /frnds/1 or /frnds/1.json
  def destroy
    @frnd.destroy

    respond_to do |format|
      format.html { redirect_to frnds_url, notice: "Frnd was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_frnd
      @frnd = Frnd.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def frnd_params
      params.require(:frnd).permit(:first_name, :last_name, :email, :phone_no, :city)
    end
end
