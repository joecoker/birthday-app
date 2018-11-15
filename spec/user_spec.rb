require 'user'

describe User do
  time = Time.new
  subject(:joe) { User.new('Joe', 24, 6,) }
  subject(:ben) { User.new('Ben', time.day, time.now.month)}

  it "should be able to access the users name, birthday and birthmonth" do
    expect(joe.name).to eq('Joe')
    expect(joe.birth_day).to eq(24)
    expect(joe.birth_month).to eq(6)
  end

  it "#birthday_today? should return false if birthday not today" do
    expect(joe.birth_day_today?).to eq(false)
  end

  it "#birthday_today? should return true if birthday is today" do
    expect(will.birth_day_today?).to eq(true)
  end
end
