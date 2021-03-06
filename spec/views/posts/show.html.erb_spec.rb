require 'rails_helper'

RSpec.xdescribe "posts/show", type: :view do
  before(:each) do
    @post = assign(:post, Post.create!(
      :description => "Description"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Description/)
  end
end
