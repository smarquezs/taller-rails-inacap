require 'rails_helper'

RSpec.describe "events/index", :type => :view do
  before(:each) do
    assign(:events, [
      Event.create!(
        :title => "Title",
        :title_slug => "Title Slug",
        :author => "Author"
      ),
      Event.create!(
        :title => "Title",
        :title_slug => "Title Slug",
        :author => "Author"
      )
    ])
  end

  it "renders a list of events" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Title Slug".to_s, :count => 2
    assert_select "tr>td", :text => "Author".to_s, :count => 2
  end
end
