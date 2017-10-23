# Rubyist:  Leslie E. Eckhart
# I-O Avenue, Highway - Fall 2017 cohort
# Project-3: Voter Simulation
# 
# Politician class object for voter simulation:
# > Politician is a child of the Person class
# > must be able to read and write political_affiliation
#   

class Politician < Person
    
    attr_accessor :registered_party
    attr_accessor :name
      
    def initialize(name, party)
        name = super(name)
        if party == " "
            @registered_party = "None"
        else     
            @registered_party = party
        end
    end
       
    def name 
        name  = "#{@@name}"
    end 
    
    def party
        party = "#{@registered_party}"
    end 
    
    def party_update(new_party)
        if new_party == " "
            raise ArgumentError
        else
            @registered_party = new_party
            affiliation_update = "#{@party_affiliation}"
        end
    end 
    
end
