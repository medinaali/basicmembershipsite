class IdearsController < ApplicationController
  before_action :set_idear, only: [:show, :edit, :update, :destroy]

  # GET /idears
  # GET /idears.json
  def index
    @idears = Idear.all
  end

  # GET /idears/1
  # GET /idears/1.json
  def show
  end

  # GET /idears/new
  def new
    @idear = Idear.new
  end

  # GET /idears/1/edit
  def edit
  end

  # POST /idears
  # POST /idears.json
  def create
    @idear = Idear.new(idear_params)

    respond_to do |format|
      if @idear.save
        format.html { redirect_to @idear, notice: 'Idear was successfully created.' }
        format.json { render :show, status: :created, location: @idear }
      else
        format.html { render :new }
        format.json { render json: @idear.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /idears/1
  # PATCH/PUT /idears/1.json
  def update
    respond_to do |format|
      if @idear.update(idear_params)
        @idear.user_id=current_user.id
        @idear.save
        format.html { redirect_to root_path, notice: 'Idea Role Successfully Updated' }
        format.json { render :index, status: :ok, location: root_path }
      else
        flash[:error] = 'Request Process Unsuccessful'
        format.html { render :edit }
        format.json { render json: @idear.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /idears/1
  # DELETE /idears/1.json
  def destroy
    @idear.destroy
    respond_to do |format|
      format.html { redirect_to idears_url, notice: 'Idear was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_idear
      @idear = Idear.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def idear_params
      params.require(:idear).permit(:filled)
    end
end
