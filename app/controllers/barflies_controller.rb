class BarfliesController < ApplicationController
  before_action :set_barfly, only: %i[ show edit update destroy ]

  # GET /barflies or /barflies.json
  def index
    @barflies = Barfly.all
  end

  # GET /barflies/1 or /barflies/1.json
  def show
  end

  # GET /barflies/new
  def new
    @barfly = Barfly.new
  end

  # GET /barflies/1/edit
  def edit
  end

  # POST /barflies or /barflies.json
  def create
    @barfly = Barfly.new(barfly_params)

    respond_to do |format|
      if @barfly.save
        format.html { redirect_to barfly_url(@barfly), notice: "Barfly was successfully created." }
        format.json { render :show, status: :created, location: @barfly }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @barfly.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /barflies/1 or /barflies/1.json
  def update
    respond_to do |format|
      if @barfly.update(barfly_params)
        format.html { redirect_to barfly_url(@barfly), notice: "Barfly was successfully updated." }
        format.json { render :show, status: :ok, location: @barfly }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @barfly.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /barflies/1 or /barflies/1.json
  def destroy
    @barfly.destroy

    respond_to do |format|
      format.html { redirect_to barflies_url, notice: "Barfly was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_barfly
      @barfly = Barfly.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def barfly_params
      params.require(:barfly).permit(:bar_id, :user_id, :is_bartender)
    end
end
