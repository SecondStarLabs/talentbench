require "test_helper"

class FreelancerArtistProfilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @freelancer_artist_profile = freelancer_artist_profiles(:one)
  end

  test "should get index" do
    get freelancer_artist_profiles_url
    assert_response :success
  end

  test "should get new" do
    get new_freelancer_artist_profile_url
    assert_response :success
  end

  test "should create freelancer_artist_profile" do
    assert_difference('FreelancerArtistProfile.count') do
      post freelancer_artist_profiles_url, params: { freelancer_artist_profile: { availability: @freelancer_artist_profile.availability, country_alpha2: @freelancer_artist_profile.country_alpha2, name: @freelancer_artist_profile.name, notes: @freelancer_artist_profile.notes, pay_rate: @freelancer_artist_profile.pay_rate, website_url: @freelancer_artist_profile.website_url } }
    end

    assert_redirected_to freelancer_artist_profile_url(FreelancerArtistProfile.last)
  end

  test "should show freelancer_artist_profile" do
    get freelancer_artist_profile_url(@freelancer_artist_profile)
    assert_response :success
  end

  test "should get edit" do
    get edit_freelancer_artist_profile_url(@freelancer_artist_profile)
    assert_response :success
  end

  test "should update freelancer_artist_profile" do
    patch freelancer_artist_profile_url(@freelancer_artist_profile), params: { freelancer_artist_profile: { availability: @freelancer_artist_profile.availability, country_alpha2: @freelancer_artist_profile.country_alpha2, name: @freelancer_artist_profile.name, notes: @freelancer_artist_profile.notes, pay_rate: @freelancer_artist_profile.pay_rate, website_url: @freelancer_artist_profile.website_url } }
    assert_redirected_to freelancer_artist_profile_url(@freelancer_artist_profile)
  end

  test "should destroy freelancer_artist_profile" do
    assert_difference('FreelancerArtistProfile.count', -1) do
      delete freelancer_artist_profile_url(@freelancer_artist_profile)
    end

    assert_redirected_to freelancer_artist_profiles_url
  end
end
