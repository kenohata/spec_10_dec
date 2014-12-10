require 'rails_helper'

RSpec.describe "microposts/show", :type => :view do
  before(:each) do
    @micropost = assign(:micropost, Micropost.create!(
      :user_id => 1,
      :token => "Token",
      :content => "Content"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Token/)
    expect(rendered).to match(/Content/)
  end
end
