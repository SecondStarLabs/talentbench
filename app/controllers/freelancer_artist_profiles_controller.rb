class FreelancerArtistProfilesController < ApplicationController
  before_action :set_freelancer_artist_profile, only: %i[ show edit update destroy ]

  # GET /freelancer_artist_profiles or /freelancer_artist_profiles.json
  def index
    if params[:charged_rate].present?
      # @freelancer_artist_profiles = FreelancerArtistProfile.tagged_with(params[:charged_rate])
      @freelancer_artist_profiles = FreelancerArtistProfile.tagged_with(params[:charged_rate], :on => :charged_rates, :any => true)
    else
      @freelancer_artist_profiles = FreelancerArtistProfile.all
    end
  end

  # GET /freelancer_artist_profiles/1 or /freelancer_artist_profiles/1.json
  def show
  end

  # GET /freelancer_artist_profiles/new
  def new
    @freelancer_artist_profile = FreelancerArtistProfile.new
  end

  # GET /freelancer_artist_profiles/1/edit
  def edit
  end

  # POST /freelancer_artist_profiles or /freelancer_artist_profiles.json
  def create
    @freelancer_artist_profile = FreelancerArtistProfile.new(freelancer_artist_profile_params)

    respond_to do |format|
      if @freelancer_artist_profile.save
        format.html { redirect_to @freelancer_artist_profile, notice: "Freelancer artist profile was successfully created." }
        format.json { render :show, status: :created, location: @freelancer_artist_profile }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @freelancer_artist_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /freelancer_artist_profiles/1 or /freelancer_artist_profiles/1.json
  def update
    respond_to do |format|
      if @freelancer_artist_profile.update(freelancer_artist_profile_params)
        format.html { redirect_to @freelancer_artist_profile, notice: "Freelancer artist profile was successfully updated." }
        format.json { render :show, status: :ok, location: @freelancer_artist_profile }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @freelancer_artist_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /freelancer_artist_profiles/1 or /freelancer_artist_profiles/1.json
  def destroy
    @freelancer_artist_profile.destroy
    respond_to do |format|
      format.html { redirect_to freelancer_artist_profiles_url, notice: "Freelancer artist profile was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def rate_charged
    if params[:charged_rate].present?
      @freelancer_artist_profile = FreelancerArtistProfile.tagged_with(params[:charged_rate])
    else
      @freelancer_artist_profile = FreelancerArtistProfile.all
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_freelancer_artist_profile
      @freelancer_artist_profile = FreelancerArtistProfile.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def freelancer_artist_profile_params
      params.require(:freelancer_artist_profile).permit(:name, 
        :country_alpha2, 
        :pay_rate, 
        :availability, 
        :rich_notes, 
        :website_url, 
        :charged_rate_list, 
        :ability_degree_list,
        skill_ids:[], 
        skills_attributes: [:name, 
          :color, 
          :description])
    end
end
