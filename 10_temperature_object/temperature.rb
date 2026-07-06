class Temperature
  def initialize(options = {})
    @celsius = options[:c]
    @fahrenheit = options[:f]
  end

  def in_fahrenheit
    @fahrenheit ||= (@celsius * 9.0 / 5) + 32
  end

  def in_celsius
    @celsius ||= (@fahrenheit - 32) * 5 / 9
  end

  def self.from_celsius(c)
    new(:c => c)
  end

  def self.from_fahrenheit(f)
    new(:f => f)
  end
end

class Celsius < Temperature
  def initialize(c)
    super(:c => c)
  end
end

class Fahrenheit < Temperature
  def initialize(f)
    super(:f => f)
  end
end