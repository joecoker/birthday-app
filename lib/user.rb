class User
  attr_reader :name, :birth_day, :birth_month

  def initialize(name, birth_day, birth_month)
    @name = name
    @birth_day = birth_day
    @birth_month = birth_month
  end

  def birth_day_today?

  end
end
