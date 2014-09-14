require 'rails_helper'

RSpec.describe "events/new", :type => :view do
  before(:each) do
    assign(:event, Event.new(
      :title => "MyString",
      :title_slug => "MyString",
      :author => "MyString"
    ))
  end

  it "renders new event form" do
    render

    assert_select "form[action=?][method=?]", events_path, "post" do

      assert_select "input#event_title[name=?]", "event[title]"

      assert_select "input#event_title_slug[name=?]", "event[title_slug]"

      assert_select "input#event_author[name=?]", "event[author]"
    end
  end
end
