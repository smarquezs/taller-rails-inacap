require 'rails_helper'

describe "Welcome#index" do
  it "should response status be 200" do
    visit welcome_index_path
    expect(response.status).to eq(200)
  end

  it "should have content 'welcome'" do

    visit welcome_index_path
    expect(page).to have_content('Welcome')
  end
end
