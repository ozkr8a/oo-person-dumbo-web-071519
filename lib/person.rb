# your code goes here
require 'pry'

class Person
  attr_reader :name, :happiness, :hygiene
  attr_writer :happiness, :hygiene
  attr_accessor :bank_account
  
  def initialize(name_arg)
    @name= name_arg
    @bank_account= 25
    @happiness= 8
    @hygiene= 8
    
    #binding.pry 
  end
  
  def happiness=(happiness)
    if happiness < 0 
      happiness = 0
    elsif happiness > 10 
      happiness = 10
    end
    
    @happiness = happiness
  end
  
    def hygiene=(hygiene)
    if hygiene < 0 
      hygiene = 0
    elsif hygiene > 10 
      hygiene = 10
    end
    
    @hygiene = hygiene
  end
  
  def clean?
    @hygiene > 7
  end
  
  def happy?
    @happiness > 7
  end
  
  def check_limits(val)
    if val < 0 
      val = 0
    elsif val > 10 
      val = 10
    end
    
    return val
  end
  
  def get_paid(salary)
    @bank_account += salary
    "all about the benjamins"
  end
  
  def take_bath
    @hygiene += 4
    self.hygiene=(@hygiene)
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end
  
  def work_out
    @happiness += 2
    self.happiness=(@happiness)
    
    @hygiene -= 3
    self.hygiene=(@hygiene)
    "♪ another one bites the dust ♫"
  end
  
  def call_friend(friend)
    @happiness += 3
    friend.happiness += 3
    
    self.happiness=(@happiness)
    
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end
  
  def start_conversation(person_arg, topic)
    if topic == "politics"
      person_arg.happiness -= 2
      @happiness -= 2
      
      self.happiness=(@happiness)
      
      return "blah blah partisan blah lobbyist"
      
    elsif topic == "weather"
    
      person_arg.happiness += 1
      self.happiness += 1
      
      return "blah blah sun blah rain"
    else
      
      return "blah blah blah blah blah"
    end
    
  end 
  
end