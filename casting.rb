require_relative 'actor'

class Casting
  #TODO init peolpe, judjes, roles
  #TODO present abilities of each people
  #TODO estimate each presentation
  attr_accessor :actors

  def initialize
    @actors = []
    actorsCount = rand(1..7)
    actorsCount.times do
      @actors.push(Actor.new)
    end
  end

  def showActors
    @actors.each { |actor|
      puts actor.gender
      puts actor.name
      puts actor.age
      puts actor.presentationList
    }
  end
end

cast = Casting.new
cast.showActors