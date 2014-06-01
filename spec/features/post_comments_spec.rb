require 'spec_helper'

feature 'Posting Comments' do
  background do
    @post = Post.create(:title => 'Awesome Blog Post', :content => 'Lorem ipsum dolor sit amet',:author =>'this is ethi')
  end

  # Note this scenario doesn't test the AJAX comment posting.
  scenario 'Posting a comment' do
    visit post_path(@post)

    comment = 'This post is just filler text. Ripped off!'

    fill_in 'comment_content', :with => comment
    click_button 'Add comment'

    expect(page).to have_content comment
  end
end