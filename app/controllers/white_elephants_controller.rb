class WhiteElephantsController < ApplicationController
  before_action :set_white_elephant, only: [:show, :edit, :update, :destroy]

  # GET /white_elephants
  # GET /white_elephants.json
  def index
    @white_elephants = WhiteElephant.all
  end

  # GET /white_elephants/1
  # GET /white_elephants/1.json
  def show
  end

  # GET /white_elephants/new
  def new
    @white_elephant = WhiteElephant.new
  end

  # GET /white_elephants/1/edit
  def edit
  end

  # POST /white_elephants
  # POST /white_elephants.json
  def create
    @white_elephant = WhiteElephant.new(white_elephant_params)

    respond_to do |format|
      if @white_elephant.save
        format.html { redirect_to @white_elephant, notice: 'White elephant was successfully created.' }
        format.json { render action: 'show', status: :created, location: @white_elephant }
      else
        format.html { render action: 'new' }
        format.json { render json: @white_elephant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /white_elephants/1
  # PATCH/PUT /white_elephants/1.json
  def update
    respond_to do |format|
      if @white_elephant.update(white_elephant_params)
        format.html { redirect_to @white_elephant, notice: 'White elephant was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @white_elephant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /white_elephants/1
  # DELETE /white_elephants/1.json
  def destroy
    @white_elephant.destroy
    respond_to do |format|
      format.html { redirect_to white_elephants_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_white_elephant
      @white_elephant = WhiteElephant.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def white_elephant_params
      params.require(:white_elephant).permit(:name, :string, :countries_visited, :integer, :country, :string)
    end
end
