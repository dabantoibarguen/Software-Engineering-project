
Given('these Users:') do |table|
    # table is a Cucumber::MultilineArgument::DataTable
    table.hashes.each do |h|
      u = User.new(h)
      u.save
    end
  end

  Given('I am logged in as an admin') do
    visit new_user_session_path
    fill_in "Email", :with => "admin@colgate.edu"
    fill_in "Password", :with => "colgate13"
    click_on "Log in"
  end


  When('I login as {string} and {string}') do |string, string2|
    fill_in "Email", :with => string
    fill_in "Password", :with => string2
    click_on "Log in"
  end

  Then('I should see {string}') do |string|
    expect(page).to have_content(string)
  end


  Given('these post:') do |table|
    table.hashes.each do |h|
      Post.create!(h)
      f = post.new(h)
      f.save
    end
  end


  Given('I am on the post index page') do
    visit post_path
    
  end

  Then('I should not see {string}') do |string|
    expect(page).to have_no_content(string)
    
  end


  When('I press {string}') do |string|
    click_on string 
    pending 
  end
  
  Then('I should be on the post index page') do
    expect(page.current_path).to eq(post_path).or eq("/")
    pending 
  end
  
  Then('I should be on the new post page') do
    expect(page.current_path).to eq(new_post_path).or eq("/")
    pending 
  end
  
  Given('I am on the new toy page') do
   visit new_post_path
   
  end

