module WorldSetUp
    require './records'
# Create both the Voter and Politician registration lists:    

 def self.voter_politician_arrays_init
     attr_accessor :list_type
     attr_accessor :voter_list
     attr_accessor :politician_list
     attr_accessor :leon_voters
     attr_accessor :leon_politicians
     
     @list_type = "V"
#    leon_voters = Records.new(@list_type).voter_list
     leon_voters = Records.new(@list_type)
     @list_type = "P"
#    leon_politicians = Records.new(@list_type).politician_list
     leon_politicians = Records.new(@list_type)

     return leon_politicians, leon_voters
 end
    
end
