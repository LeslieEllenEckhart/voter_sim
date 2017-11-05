# Rubyist:  Leslie E. Eckhart
# I-O Avenue, Highway - Fall 2017 cohort
# Project-3: Voter Simulation
# 
# Class for the arrays of voters and politicians for voter simulation
#

require './person.rb'
require './voter.rb'
require './politician.rb'

class Records      

    attr_accessor :voter_list
    attr_accessor :politician_list
             
    def initialize(list_type)
        @list_type = list_type
#         puts "This is the list_type: #{@list_type}"
        
        if !["V", "P"].include?(@list_type)
#         if @list_type !== "V" and @list_type !== "P"
            puts "OOOOPS!!  Error coming!!!!!!!!!!!!!!!"
            raise ArgumentError
        end
        
        if @list_type == "V"
            @voter_list = []  
        else # list_type == "P"
            @politician_list = []
        end
    end
    
    def create_voter(name, political_affiliation)
        voter = Voter.new(name, political_affiliation)
        @voter_list.push(voter)
    end
    
    def create_politician(name, registered_party)
        politician = Politician.new(name, registered_party)
        @politician_list.push(politician)
    end
    
    def list_voters
        results = " "
        
        @voter_list.each { |voter|
            results += "Voter: #{voter.name}, #{voter.political_affiliation}\n"
            }
          
        return results
    end
    
    def list_politicians
        results = " "
        
        @politician_list.each { |politician|
            results += "Politician : #{politician.name}, #{politician.registered_party}\n"
            }
        
        return results
    end

    # enumeration to run thru array to find the index
    def search_voter(name)
        index = @voter_list.index{ |voter| voter.name == name }  
    end
    
    # enumeration to run thru array to find the index
    def search_politician(name)
        index = @politician_list.index{ |politician| politician.name == name }  
    end

    def update_voter(old_name, new_name, new_affiliation)
        index = search_voter(old_name)
        if index != nil
           @voter_list[index].name = new_name
           @voter_list[index].political_affiliation = new_affiliation     
        end
    end

    def update_politician(old_name, new_name, new_registered_party)
        index = search_politician(old_name)
        if index != nil
           @politician_list[index].name = new_name
           @politician_list[index].registered_party = new_registered_party   
        end
    end
  
    def delete_voter(name)
        index = search_voter(name)
        
        if index != nil
            @voter_list.delete_at(index)
        end
     end
    
    def delete_politician(name)
        index = search_politician(name)
        
        if index != nil
            @politician_list.delete_at(index)
        end
    end
     
end
