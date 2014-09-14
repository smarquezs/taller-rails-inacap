require 'rails_helper'

RSpec.describe "events/edit", :type => :view do
  before(:each) do
    @event = assign(:event, Event.create!(
      :title => "MyString",
      :title_slug => "MyString",
      :author => "MyString"
    ))
  end

  it "renders the edit event form" do
    render

    assert_select "form[action=?][method=?]", event_path(@event), "post" do

      assert_select "input#event_title[name=?]", "event[title]"

      assert_select "input#event_title_slug[name=?]", "event[title_slug]"

      assert_select "input#event_author[name=?]", "event[author]"
    end
  end
end
