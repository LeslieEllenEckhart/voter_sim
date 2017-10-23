# 
# This the World in which we are maintaining
# Voter and Politician registrations lists.
#
require './person.rb'
require './voter.rb'
require './politician.rb'
require './records.rb'

require './world_setup.rb'
# require './print_lists.rb'
require './world_verbiage.rb'

#
# Clear the screen:
blank_line = " "

i = 0 
while i < 34
    puts blank_line 
    i += 1 
end

WorldVerbiage.greeting
WorldVerbiage.choice1_qstn

# puts "Greetings Leon County Residents!"
# puts "Welcome to the Leon Voter and Politician Registries in the Sunshine! "
# puts "You may perform basic functions on our Registries."
# puts " "
# puts "Would you like to work on 1 - Voters, or 2 - Politicians?"
# puts "Please enter the number for the registry you wish to work with."
# puts "Note:  The default will be the Voters Registry."

choice_1 = gets.chomp

if choice_1 == "1"
    puts "   You have selected to work with the Voter Registry"
    elsif choice_1 == "2"
        puts "   You have selected to work with the Politician Registry"
    else
       choice_1 = "1"
end

if choice_1 == "1"
   puts "The possible actions for Voters are:"
   puts "A - Define a new Voter (name & political affiliation) to the Leon County Voter Registry"
   puts "B - Update a Voter's information (name and/or political affiliation)"
   puts "Note:  The default will be to add to the Voters Registry."
else
   puts "The possible actions for Politicians are:"
   puts "A - Define a new Politician (name and political party) to the Leon County Politician Registry"
   puts "B - Update a Politician's information (name and/or political party)"
   puts "Note:  The default will be to add to the Politicians Registry."
end

puts "Please enter the letter for the action you wish to take."
choice_2 = gets.chomp

if choice_2 != ("A" "a" "B" "b")
   choice_2 = "A"
end

# puts choice_2

# Set-up for Voter Simulation:

WorldSetUp.voter_politician_arrays_init
#
PrintLists.print_lists
#
# puts the intro and questions
# puts options C R U D








# user_input = gets.chomp
# case user_input
#     when "C"
#         voter_records.create_voters
#     when "L"
#         records.list_all_voters
#         records
    