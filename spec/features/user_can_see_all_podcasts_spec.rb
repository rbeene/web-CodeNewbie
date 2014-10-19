require 'spec_helper'

feature 'User can see all podcasts that are published' do
  given!(:podcast){FactoryGirl.create(:valid_podcast, :draft => false)}
  given!(:podcast_draft){FactoryGirl.create(:valid_podcast, :draft => true, :name => "Draft")}

  scenario 'with direct link' do
    visit podcasts_path

    expect(page).to have_content("Podcast")
    expect(page).to have_content(podcast.name)
    expect(page).to have_link(podcast.name, href: podcast_path(podcast))
    expect(page).to have_content(podcast.description)

    expect(page).not_to have_content(podcast_draft.name)

  end
end
