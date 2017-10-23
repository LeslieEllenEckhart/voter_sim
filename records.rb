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
    attr_accessor :voter1 
    attr_accessor :politician1
    attr_accessor :list_type
    attr_accessor :listing
    attr_accessor :voter_list
    attr_accessor :politician_list
             
    def initialize(list_type)
        @list_type = list_type
        puts "This is the list_type: #{@list_type}"
        
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
       @voter_list.push(@voter1)
    end
#
#      Must use "self." for methods that modify @@class variables!
    def self.add_politician(name, party)
        @politician1 = Politician.new(name, party)
        @@political_registry.push(@politician1)
    end
    
    def self.list(list_type)
        @listing = " "
        if list_type == ("V" or "B")
            @@voter_registry.each do |voter|
               @listing += "Voter: #{voter.name}, #{voter.politics}\n"
            end
        end
        if list_type == ("P" or "B")
            @@political_registry.each do |pol|
               @listing += "Politician: #{pol.name}, #{pol.party}\n"
            end
        end   
        @@results = @listing
        return @@results  # in main puts records.list
    end
#     show :   voter johndoe, liberal
#                  pol, johndoe2, repub
#    
#     def list all voters and poli     
#         voters_pol +=     (append them to make a string output)
        
#         for loop all voters in array
#             results = " "
#             for name (rubyflow slide 29)
            
#                 voters.each do |voter|
#                     results += "voter: "
#                     results += voter.name
#                     results += ", "
#                     results += voter.affil
#                     results += "\n"
                    
#                     -or0-
#                         results += "voter, #{voter.name}, #{voter.aff}\n"
            
        
    def update_voter 
        # will need to search to find 
    end

    def update_pol
    end
  
    def delete_pol
        #  array.delete_at(2) using index value
        #  array.delete("element")
    end
    
    def delete_voter
        #  array.delete_at(2) using index value
        #  array.delete("element")
    end
end
