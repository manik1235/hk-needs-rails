class V2NeedsController < ApplicationController
  before_action :set_v2_need, only: [:show, :edit, :update, :destroy]

  # GET /v2_needs
  # GET /v2_needs.json
  def index
    @v2_needs = V2Need.all
  end

  # GET /v2_needs/1
  # GET /v2_needs/1.json
  def show
  end

  # GET /v2_needs/new
  def new
    @v2_need = V2Need.new
  end

  # GET /v2_needs/1/edit
  def edit
  end

  # POST /v2_needs
  # POST /v2_needs.json
  def create
    @v2_need = V2Need.new(v2_need_params)

    respond_to do |format|
      if @v2_need.save
        format.html { redirect_to @v2_need, notice: 'V2 need was successfully created.' }
        format.json { render :show, status: :created, location: @v2_need }
      else
        format.html { render :new }
        format.json { render json: @v2_need.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /v2_needs/1
  # PATCH/PUT /v2_needs/1.json
  def update
    respond_to do |format|
      if @v2_need.update(v2_need_params)
        format.html { redirect_to @v2_need, notice: 'V2 need was successfully updated.' }
        format.json { render :show, status: :ok, location: @v2_need }
      else
        format.html { render :edit }
        format.json { render json: @v2_need.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /v2_needs/1
  # DELETE /v2_needs/1.json
  def destroy
    @v2_need.destroy
    respond_to do |format|
      format.html { redirect_to v2_needs_url, notice: 'V2 need was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_v2_need
      @v2_need = V2Need.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def v2_need_params
      params.require(:v2_need).permit(:user, :item, :budgeted, :allocated, :purchased, :abandoned)
    end
end
