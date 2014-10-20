require 'spec_helper'

feature "User can see front_end_newbie page" do 

  scenario "by going to the link" do 
    visit front_end_newbie_path

    expect(page).to have_content("Front End Newbie")
  end
 
end