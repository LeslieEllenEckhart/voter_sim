# Rubyist:  Leslie E. Eckhart
# I-O Avenue, Highway - Fall 2017 cohort
# Project-3: Voter Simulation
# 
# Person class object for voter simulation:
#   > must be able to read and write person_name
# 
class Person
    
    attr_accessor :name
    
    def initialize(name)
        if name == " "
           raise ArgumentError
        else
           @name = name
        end
    end
    
    def person_name
        person_name = "Person is named #{@name}."
    end
    
    def name_update(new_name)
        if new_name == " "
            raise ArgumentError
        else
            @person_name = new_name
            puts = "Person is named #{@name}."
        end
    end 
    
end # end of Person class






