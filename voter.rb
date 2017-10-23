# Rubyist:  Leslie E. Eckhart
# I-O Avenue, Highway - Fall 2017 cohort
# Project-3: Voter Simulation
# 
# Class for a "voter" for voter simulation
#
require './person.rb'

class Voter < Person
    attr_accessor :political_affiliation
    attr_accessor :name
      
    def initialize(name, politics)
        super(name)
        if politics == " "
            @political_affiliation = "None"
          else     
            @political_affiliation = politics
          end
    end

    def name   
        name  = "#{@@name}"
    end  
   
    def politics
        politics = "#{@political_affiliation}"
    end 
    
    def affiliation_update(new_affiliation)
        if new_affiliation == " "
            raise ArgumentError
        else
            @new_affiliation = new_affiliation
            affiliation_update = "Updated political affiliation is #{@political_view}."
        end
    end 
    
end
