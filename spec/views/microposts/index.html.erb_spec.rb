require 'rails_helper'

RSpec.describe "microposts/index", :type => :view do
  before(:each) do
    assign(:microposts, [
      Micropost.create!(
        :user_id => 1,
        :token => "Token",
        :content => "Content"
      ),
      Micropost.create!(
        :user_id => 1,
        :token => "Token",
        :content => "Content"
      )
    ])
  end

  it "renders a list of microposts" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Token".to_s, :count => 2
    assert_select "tr>td", :text => "Content".to_s, :count => 2
  end
end
