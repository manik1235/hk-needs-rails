class V1NeedsController < ApplicationController
  before_action :set_v1_need, only: [:show, :edit, :update, :destroy]

  # GET /v1_needs
  # GET /v1_needs.json
  def index
    @v1_needs = V1Need.all
  end

  # GET /v1_needs/1
  # GET /v1_needs/1.json
  def show
  end

  # GET /v1_needs/new
  def new
    @v1_need = V1Need.new
  end

  # GET /v1_needs/1/edit
  def edit
  end

  # POST /v1_needs
  # POST /v1_needs.json
  def create
    @v1_need = V1Need.new(v1_need_params)

    respond_to do |format|
      if @v1_need.save
        format.html { redirect_to @v1_need, notice: 'V1 need was successfully created.' }
        format.json { render :show, status: :created, location: @v1_need }
      else
        format.html { render :new }
        format.json { render json: @v1_need.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /v1_needs/1
  # PATCH/PUT /v1_needs/1.json
  def update
    respond_to do |format|
      if @v1_need.update(v1_need_params)
        format.html { redirect_to @v1_need, notice: 'V1 need was successfully updated.' }
        format.json { render :show, status: :ok, location: @v1_need }
      else
        format.html { render :edit }
        format.json { render json: @v1_need.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /v1_needs/1
  # DELETE /v1_needs/1.json
  def destroy
    @v1_need.destroy
    respond_to do |format|
      format.html { redirect_to v1_needs_url, notice: 'V1 need was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_v1_need
      @v1_need = V1Need.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def v1_need_params
      params.require(:v1_need).permit(:user, :item, :budgeted, :allocated)
    end
end
