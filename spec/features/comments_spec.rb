require "rails_helper"

RSpec.feature "Comment", :type => :feature do

  scenario "Verifying Link Page", :js => true do

    visit "/session/new"
    click_link('Joe Thornton', match: :first)
    click_link('Messages with live comments')
    click_link('Stanley Cup', match: :first)

    fill_in 'comment_content', with: 'Hey, nice forum!<script>alert("Guess who just got owned?")</script>. Here is the link: https://www.google.com. Please also check out https://amazon.com/best-deals for the best deals. By the way, I sent the survey to alice@biba.com and bob@biba.com.'
    click_button 'Post comment'

    expect(page).to have_text("Comment by Joe Thornton")

    click_link('https://www.google.com', match: :first)

    expect(page).to have_text("Gmail")

  end

  scenario "Verifying Link Page - Amazon", :js => true do

    visit "/session/new"
    click_link('Joe Thornton', match: :first)
    click_link('Messages with live comments')
    click_link('Stanley Cup', match: :first)
    click_link('https://amazon.com/best-deals', match: :first)

  end

  scenario "Verifying Link Page - Email", :js => true do

    visit "/session/new"
    click_link('Joe Thornton', match: :first)
    click_link('Messages with live comments')
    click_link('Stanley Cup', match: :first)
    click_link('alice@biba.com', match: :first)

  end

end
