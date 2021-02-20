# your code goes here
class Person
    attr_accessor :bank_account, :happiness, :hygiene
    attr_reader :name
    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(happy_num)
        @happiness = happy_num
        if @happiness > 10
            @happiness = 10
        end
        if @happiness < 0
            @happiness = 0
        end
    end
    # def happiness(happy_num)
    #     self.happiness
    #     if self.happiness > 10
    #         happiness = 10
    #     end
    #     if self.happiness < 0
    #         happiness = 0
    #     end
    # end

    def hygiene=(hygiene_num)
        @hygiene = hygiene_num
        if @hygiene > 10
            @hygiene = 10
        end
        if @hygiene < 0
            @hygiene = 0
        end
    end

    def happy?
        self.happiness > 7 ? TRUE : FALSE
    end

    def clean?
        @hygiene > 7 ? TRUE : FALSE
    end

    def get_paid(salary)
        @bank_account = bank_account + salary
        return "all about the benjamins"
    end

    def take_bath
        self.hygiene = hygiene + 4
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene = hygiene - 3
        self.happiness = happiness + 2
        return "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness = happiness + 3
        friend.happiness = friend.happiness + 3
        return "Hi #{friend.name}! It's #{self.name}. How are you?"
    end
    
    def start_conversation(person_called, topic="other")
        if topic == "politics"
            self.happiness -= 2
            person_called.happiness -= 2
            return "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness += 1
            person_called.happiness += 1
            return "blah blah sun blah rain"
        else
            return "blah blah blah blah blah"
        end
    end


end
