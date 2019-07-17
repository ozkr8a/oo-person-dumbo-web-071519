# your code goes here

class Person
  attr_reader :name, :happiness
  attr_accessor :bank_account, :hygiene, :happiness
  
  def initialize(name_arg)
    @name= name_arg
    @bank_account= 25
    @happiness= 8
    @hygiene= 8
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
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end
  
  def work_out
    
    @happiness += 2
    check_limits(@happiness)
    @hygiene -= 3
    check_limits(@hygiene)
    "♪ another one bites the dust ♫"
  end
  
  def call_friend(friend)
    @happiness += 3
    friend.happiness += 3
    
    check_limits(@happiness)
    check_limits(friend.happiness)
    
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end
  
  def start_conversation(person_arg, topic)
    if topic == "politics"
      person_arg.happiness -= 1
      self.happiness -= 1
      
      check_limits(person_arg.happiness)
      check_limits(self.happiness)
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