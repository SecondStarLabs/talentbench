require "application_system_test_case"

class FreelancerArtistProfilesTest < ApplicationSystemTestCase
  setup do
    @freelancer_artist_profile = freelancer_artist_profiles(:one)
  end

  test "visiting the index" do
    visit freelancer_artist_profiles_url
    assert_selector "h1", text: "Freelancer Artist Profiles"
  end

  test "creating a Freelancer artist profile" do
    visit freelancer_artist_profiles_url
    click_on "New Freelancer Artist Profile"

    fill_in "Availability", with: @freelancer_artist_profile.availability
    fill_in "Country alpha2", with: @freelancer_artist_profile.country_alpha2
    fill_in "Name", with: @freelancer_artist_profile.name
    fill_in "Notes", with: @freelancer_artist_profile.notes
    fill_in "Pay rate", with: @freelancer_artist_profile.pay_rate
    fill_in "Website url", with: @freelancer_artist_profile.website_url
    click_on "Create Freelancer artist profile"

    assert_text "Freelancer artist profile was successfully created"
    click_on "Back"
  end

  test "updating a Freelancer artist profile" do
    visit freelancer_artist_profiles_url
    click_on "Edit", match: :first

    fill_in "Availability", with: @freelancer_artist_profile.availability
    fill_in "Country alpha2", with: @freelancer_artist_profile.country_alpha2
    fill_in "Name", with: @freelancer_artist_profile.name
    fill_in "Notes", with: @freelancer_artist_profile.notes
    fill_in "Pay rate", with: @freelancer_artist_profile.pay_rate
    fill_in "Website url", with: @freelancer_artist_profile.website_url
    click_on "Update Freelancer artist profile"

    assert_text "Freelancer artist profile was successfully updated"
    click_on "Back"
  end

  test "destroying a Freelancer artist profile" do
    visit freelancer_artist_profiles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Freelancer artist profile was successfully destroyed"
  end
end
