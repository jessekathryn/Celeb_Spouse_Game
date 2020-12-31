class MarriagesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_marriage, only: [:show, :edit, :update, :destroy]

  # GET /marriages
  # GET /marriages.json
  def index
    @marriages = Marriage.all
  end

  # GET /marriages/1
  # GET /marriages/1.json
  def show
  end

  # GET /marriages/new
  def new
    @marriage = Marriage.new
  end

  # GET /marriages/1/edit
  def edit
  end

  # POST /marriages
  # POST /marriages.json
  def create
    @marriage = Marriage.new(marriage_params)

    respond_to do |format|
      if @marriage.save
        format.html { redirect_to @marriage, notice: 'Marriage was successfully created.' }
        format.json { render :show, status: :created, location: @marriage }
      else
        format.html { render :new }
        format.json { render json: @marriage.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /marriages/1
  # PATCH/PUT /marriages/1.json
  def update
    respond_to do |format|
      if @marriage.update(marriage_params)
        format.html { redirect_to @marriage, notice: 'Marriage was successfully updated.' }
        format.json { render :show, status: :ok, location: @marriage }
      else
        format.html { render :edit }
        format.json { render json: @marriage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /marriages/1
  # DELETE /marriages/1.json
  def destroy
    @marriage.destroy
    respond_to do |format|
      format.html { redirect_to marriages_url, notice: 'Marriage was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_marriage
      @marriage = Marriage.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def marriage_params
      params.require(:marriage).permit(:husband, :wife, :start_year, :end_year)
    end
end
