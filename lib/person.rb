class Person
  attr_reader :name
  attr_accessor :bank_account, :happiness, :hygiene

  def initialize(name, bank_account = 25, happiness = 8 , hygiene = 8)
    @name = name
    @bank_account = bank_account
    @happiness = happiness
    @hygiene = hygiene
  end

  def happiness
    @happiness.clamp(0,10)
  end

  def hygiene
    @hygiene.clamp(0,10)
  end
  
  def happy?
    happiness > 7
  end

  def clean?
    hygiene > 7
  end

  def get_paid(money)
    self.bank_account += money
    return "all about the benjamins"
  end

  def take_bath
    self.hygiene += 4
    return "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.hygiene -= 3
    self.happiness += 2
    return "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    self.happiness += 3
    friend.happiness += 3
    return "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(person, topic)
    case topic
    when  "politics"
      self.happiness -=2
      person.happiness -=2
      return "blah blah partisan blah lobbyist"
    when  "weather"
      self.happiness +=1
      person.happiness +=1
      return "blah blah sun blah rain"
    else 
      return "blah blah blah blah blah"
    end
  end
end