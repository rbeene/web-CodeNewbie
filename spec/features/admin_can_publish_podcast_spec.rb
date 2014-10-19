require 'spec_helper'

feature 'Admin can publish a podcast' do
  before(:each){stub_const('ENV', {'PW' => 'password'})}
  given!(:podcast){FactoryGirl.create(:valid_podcast, :draft => true)}
  given!(:guest){FactoryGirl.create(:valid_guest)}
  given!(:show_guest){ShowGuest.create(:guest => guest, :podcast => podcast)}
  given!(:show_note){FactoryGirl.create(:valid_show_note, podcast: podcast, :link => "http://google.com")}

  scenario 'when signed in' do
    sign_up_as_admin_with("password")
    visit podcast_path(podcast)

    expect(page).to have_content("DRAFT")
    click_link("Publish")

    expect(current_path).to eq(podcast_path(podcast))
    expect(page).not_to have_content("DRAFT")
    expect(page).to have_content("Successfully published!")

    expect(Podcast.find(podcast).draft).to eq(false)
  end

  scenario 'but only for drafts' do 
    podcast.update(:draft => false)
    visit podcast_path(podcast)

    expect(page).not_to have_link("Publish")
  end

  scenario "but not when signed out" do
    visit podcast_path(podcast)

    expect(current_path).to eq(podcasts_path) 
  end

end
