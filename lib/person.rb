# your code goes here


class Person
  attr_reader :name, :happiness
  attr_writer :happy_limit 
  attr_accessor :bank_account, :hygiene
  
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
  
  def happy_limit 
    if @happiness > 0 && @happiness < 10
      return @happiness
    end
    
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
    if !(@happiness > 0 && @happiness < 10)
      @happiness = 10
    end
    
    @hygiene -= 3
    "♪ another one bites the dust ♫"
  end
  
  def call_friend(friend)
    @happiness += 3
    if !(@happiness > 0 && @happiness < 10)
      @happiness = 10
    end
    friend.happiness += 3
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end
  
  def start_conversation(person_arg, topic)
    if topic == "politics"
      person_arg.happiness -= 1
      self.happiness -= 1
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