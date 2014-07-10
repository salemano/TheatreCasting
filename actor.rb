require_relative 'person'

class Actor < Person

  attr_accessor :presentationList

  def initialize
    @gender = rand(1..10)
    @name = getName(rand(1..3), @gender)
    @gender = getGender(@gender)
    @age = rand(15..65)
    @presentationList = []
  end

  def getName(num, gender)
    case num
      when 1
        return 'Bob' if gender%2 == 0
        'Bella'
      when 2
        return 'Sam' if gender%2 == 0
        'Sara'
      when 3
        return 'james' if gender%2 == 0
        'jessie'
    end
  end

  def getGender(num)
    return 'man' if num%2 == 0
    'woman'
  end
end