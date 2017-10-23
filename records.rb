require './voter.rb'
require './politician.rb'

class Records 

# Rubyist:  Leslie E. Eckhart
# I-O Avenue, Highway - Fall 2017 cohort
# Project-3: Voter Simulation
# 
# Class for a "voter" for voter simulation
#
       
#     attr_accessor :name
#     attr_accessor :politics
#     attr_accessor :party
#     attr_accessor :list_type
#     attr_accessor :listing
    attr_accessor :voter_list
    attr_accessor :politician_list
             
    def initialize(list_type)
        @list_type = list_type
#         puts "This is the list_type: #{@list_type}"
        
#         if !["V","P"].include?(@list_type)
        if @list_type != "V" and @list_type != "P"
#         if @list_type != ("V" and "P")
            puts "OOOOPS!!  Error coming!!!!!!!!!!!!!!!"
            raise ArgumentError
        end
        
        if @list_type == "V"
            @voter_list = []  
        else # list_type == "P"
            @politician_list = []
        end
    end
    
    def create_voter(name,political_affiliation)
        voter = Voter.new(name,political_affiliation)
        @voter_list.push(voter)
    end
    
    def create_politician(name, party_affiliation)
        voter = Politician.new(name, party_affiliation)
        @politician_list.push(politician)
    end
    
    def list
        results = ""
    
        @voter_list.each do |voter|
            results += "Voter, #{voter.name}, #{voter.political_affiliation}\n"
        end
        
        @politician_list.each do |politician|
            results += "Politician, #{politician.name}, #{policician.party_affiliation}"
        end
        
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
#
#      Must use "self." for methods that modify @@class variables!
    def add_voter(voter1)
       @voter_list.push(voter1)
    end
#
    def add_politician(politician1)
        @politician_list.push(politician1)
    end
    
    def update_voter(old_name, new_name, new_affiliation)
        index = search_voter(old_name)
        if index != nil
           @voter_list[index].name = new_name
           @voter_list[index].political_affiliation = new_affiliation     
        end
    end

    def update_pol(name)
    end
  
    def delete_pol(name)
        
        #  array.delete_at(2) using index value
        #  array.delete("element")
    end
    
    def delete_voter(name)
        index = search_voter(name)
        
        if index != nil
            @voter_list.delete_at(index)
        end
        
        #  array.delete_at(2) using index value
        #  array.delete("element")
    end
end
