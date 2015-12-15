class BarnsController < ApplicationController
  before_action :set_barn, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  before_action :barners

  # GET /barns
  # GET /barns.json
  def index
    @barns = Barn.all
  end

  # GET /barns/1
  # GET /barns/1.json
  def show
  end

  # GET /barns/new
  def new
    @barn = Barn.new
  end

  # GET /barns/1/edit
  def edit
  end

  # POST /barns
  # POST /barns.json
  def create
    @barn = Barn.new(barn_params)

    respond_to do |format|
      if @barn.save
        format.html { redirect_to @barn, notice: 'Barn was successfully created.' }
        format.json { render :show, status: :created, location: @barn }
      else
        format.html { render :new }
        format.json { render json: @barn.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /barns/1
  # PATCH/PUT /barns/1.json
  def update
    respond_to do |format|
      if @barn.update(barn_params)
        format.html { redirect_to @barn, notice: 'Barn was successfully updated.' }
        format.json { render :show, status: :ok, location: @barn }
      else
        format.html { render :edit }
        format.json { render json: @barn.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /barns/1
  # DELETE /barns/1.json
  def destroy
    @barn.destroy
    respond_to do |format|
      format.html { redirect_to barns_url, notice: 'Barn was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_barn
      @barn = Barn.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def barn_params
      params.require(:barn).permit(:barn_cleandate, :user_id, :equipment_issing, :descrption)
    end
end
