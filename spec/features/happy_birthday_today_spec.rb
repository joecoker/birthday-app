require 'date'

feature "Says happy birthday if users birthday today" do
  scenario "User enters birthday and is shown page saying happy birthday" do

    time = Time.new
    day = time.day

    month = Date::MONTHNAMES[Date.today.month]

    visit('/')
    fill_in 'user_name', with: 'Ben'
    fill_in 'day', with: day
    find(:select, 'month').first(:option, month).select_option
    click_button 'Go'
    expect(page).to have_content('Happy Birthday Will!')
  end
end
