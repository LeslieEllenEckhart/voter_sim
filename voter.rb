# Class for a "voter" for voter simulation
# 
class Voter < Person
    attr_accessor :political_party
   
    @@party_registration = " "
      
    def initialize(name, party)
        super(name)
        if party == " "
            @party_choice = "None"
            @@party_registration = @party_choice
        else     
            @party_choice = party
            @@party_registration = @party_choice
        end
    end
    
    def party_registration
        party_registration = "Party registration is #{@@party_registration}."
    end 
    
    def party_update(new_party)
        if new_party == " "
            raise ArgumentError
        else
            @party_choice = new_party
            @@party_registration = @party_choice
            party_update = "New party registration is #{@@party_registration}."
        end
    end 
    
end
