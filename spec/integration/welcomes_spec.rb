require 'rails_helper'

describe "Welcome#index" do
  it "should response status be 200" do
    # use it 'get' when you need test it the response code (200, 301 etc)
    get "/cl/welcome/index"
    expect(response.status).to eq(200)
  end

  it "should have content 'welcome'" do
    # visit is a helper provided by capybara
    #  you can get more information visiting https://github.com/jnicklas/capybara
    visit "/cl/welcome/index"
    expect(page).to have_content('Bienvenido')
  end
end
