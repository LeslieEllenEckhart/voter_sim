class Records 

# Rubyist:  Leslie E. Eckhart
# I-O Avenue, Highway - Fall 2017 cohort
# Project-3: Voter Simulation
# 
# Class for a "voter" for voter simulation
#
       
    attr_accessor :name
    attr_accessor :politics
    attr_accessor :party
    attr_accessor :list_type
    attr_accessor :listing
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
#
#      Must use "self." for methods that modify @@class variables!
    def add_voter(voter1)
       @voter_list.push(voter1)
    end
#
    def add_politician(politician1)
        @politician_list.push(politician1)
    end
    
    def update_voter(name)
        
        # will need to search to find 
    end

    def update_pol(name)
    end
  
    def delete_pol(name)
        #  array.delete_at(2) using index value
        #  array.delete("element")
    end
    
    def delete_voter(name)
        #  array.delete_at(2) using index value
        #  array.delete("element")
    end
end
