class GongsController < ApplicationController
  before_action :set_gong, only: [:show, :edit, :update, :destroy, :reset_votes]

  # GET /gongs
  # GET /gongs.json
  def index
    @gongs = Gong.all
  end

  # GET /gongs/1
  # GET /gongs/1.json
  def show
  end

  # GET /gongs/new
  def new
    @gong = Gong.new
  end

  # GET /gongs/1/edit
  def edit
  end

  # POST /gongs
  # POST /gongs.json
  def create
    @gong = Gong.new(gong_params)

    respond_to do |format|
      if @gong.save
        format.html { redirect_to @gong, notice: 'Gong was successfully created.' }
        format.json { render action: 'show', status: :created, location: @gong }
      else
        format.html { render action: 'new' }
        format.json { render json: @gong.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gongs/1
  # PATCH/PUT /gongs/1.json
  def update
    respond_to do |format|
      if @gong.update(gong_params)
        format.html { redirect_to @gong, notice: 'Gong was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @gong.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gongs/1
  # DELETE /gongs/1.json
  def destroy
    @gong.destroy
    respond_to do |format|
      format.html { redirect_to gongs_url }
      format.json { head :no_content }
    end
  end

  def reset_votes
    @gong.votes.destroy_all
    respond_to do |format|
      format.html { redirect_to gong_url(@gong) }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gong
      @gong = Gong.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gong_params
      params.require(:gong).permit(:name, :threshhold)
    end
end
