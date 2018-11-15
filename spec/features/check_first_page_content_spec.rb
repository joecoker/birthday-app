feature 'Home page contains correct language' do
  scenario "Can run app and see welcome content" do
    visit('/')
    expect(page).to have_content('Hello there!')
    expect(page).to have_content('What\'s your name?')
    expect(page).to have_content('When\'s your birthday?')
  end
end
