require 'rails_helper'

RSpec.describe "microposts/edit", :type => :view do
  before(:each) do
    @micropost = assign(:micropost, Micropost.create!(
      :user_id => 1,
      :token => "MyString",
      :content => "MyString"
    ))
  end

  it "renders the edit micropost form" do
    render

    assert_select "form[action=?][method=?]", micropost_path(@micropost), "post" do

      assert_select "input#micropost_user_id[name=?]", "micropost[user_id]"

      assert_select "input#micropost_token[name=?]", "micropost[token]"

      assert_select "input#micropost_content[name=?]", "micropost[content]"
    end
  end
end
