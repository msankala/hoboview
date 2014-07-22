class PanoramasController < ApplicationController
  before_action :set_panorama, only: [:show, :edit, :update, :destroy]

  # GET /panoramas
  # GET /panoramas.json
  def index
    @panoramas = policy_scope(Panorama.all)
    #@panoramas = Panorama.all
  end

  # GET /panoramas/1
  # GET /panoramas/1.json
  def show
    authorize @panorama

    @panoramas = Panorama.where('id <> ?', @panorama.id).where('lon <> 0 AND lat <> 0')
    @panoramas = @panoramas.sort {|a,b| @panorama.bearing(a) <=> @panorama.bearing(b)}
  end

  # GET /panoramas/new
  def new
    @panorama = Panorama.new
    authorize @panorama
    @panorama.copyright = current_user.name
  end

  # GET /panoramas/1/edit
  def edit
    authorize @panorama
  end

  # POST /panoramas
  # POST /panoramas.json
  def create
    @panorama = current_user.panoramas.new(panorama_params)
    authorize @panorama

    respond_to do |format|
      if @panorama.save
        format.html { redirect_to @panorama, notice: 'Panorama was successfully created.' }
        format.json { render action: 'show', status: :created, location: @panorama }
      else
        format.html { render action: 'new' }
        format.json { render json: @panorama.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /panoramas/1
  # PATCH/PUT /panoramas/1.json
  def update
    authorize @panorama
    respond_to do |format|
      if @panorama.update(panorama_params)
        format.html { redirect_to @panorama, notice: 'Panorama was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @panorama.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /panoramas/1
  # DELETE /panoramas/1.json
  def destroy
    authorize @panorama
    @panorama.destroy
    respond_to do |format|
      format.html { redirect_to panoramas_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_panorama
      @panorama = Panorama.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def panorama_params
      params.require(:panorama).permit(:title, :center, :heading, :copyright, :description, :image, :lon, :lat)
    end
end
