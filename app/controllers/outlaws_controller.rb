class OutlawsController < ApplicationController
  before_action :set_outlaw, only: [:show, :edit, :update, :destroy]

  # GET /outlaws
  # GET /outlaws.json
  def index
    @outlaws = Outlaw.all
  end

  # GET /outlaws/1
  # GET /outlaws/1.json
  def show
  end

  # GET /outlaws/new
  def new
    @outlaw = Outlaw.new
  end

  # GET /outlaws/1/edit
  def edit
  end

  # POST /outlaws
  # POST /outlaws.json
  def create
    @outlaw = Outlaw.new(outlaw_params)

    respond_to do |format|
      if @outlaw.save
        format.html { redirect_to @outlaw, notice: 'Outlaw was successfully created.' }
        format.json { render :show, status: :created, location: @outlaw }
      else
        format.html { render :new }
        format.json { render json: @outlaw.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /outlaws/1
  # PATCH/PUT /outlaws/1.json
  def update
    respond_to do |format|
      if @outlaw.update(outlaw_params)
        format.html { redirect_to @outlaw, notice: 'Outlaw was successfully updated.' }
        format.json { render :show, status: :ok, location: @outlaw }
      else
        format.html { render :edit }
        format.json { render json: @outlaw.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /outlaws/1
  # DELETE /outlaws/1.json
  def destroy
    @outlaw.destroy
    respond_to do |format|
      format.html { redirect_to outlaws_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_outlaw
      @outlaw = Outlaw.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def outlaw_params
      params.require(:outlaw).permit(:name, :nick, :wanted_for, :back_story, :facial_hair, :how_punished, :hat)
    end
end
