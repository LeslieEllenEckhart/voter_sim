# 
# This the World in which we are maintaining
# Voter and Politician registrations lists.
#
require './person.rb'
require './voter.rb'
require './politician.rb'
require './records.rb'

require './world_setup.rb'
require './print_lists.rb'
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

puts "You chose: #{choice_2}"

# Set-up for the lists by creating instances of both:

politician_records, voter_records = WorldSetUp.voter_politician_arrays_init

# Now in here we need to prompt for adding either a voter or politician

if choice_1 == "1"
    puts "Please type the full name of the voter you wish to add:"
    v_name = gets.chomp
    puts "Voters also need a political affiliation from the following choices:"
    puts "C-Conservative, L-Liberal, N-Neutral, S-Socialist or T-Tea Party"
    puts "Next, please type the Letter for the voter's political affiliation:"
    v_pol = gets.chomp
    case v_pol
        when "C"  
            v_politics = "Conservative"
        when "L"
            v_politics = "Liberal"
        when "N"
            v_politics = "Neutral"
        when "S"
            v_politics = "Socialist"
        when "T"
            v_politics = "Tea Party"
        else
            v_politics = v_pol
    end  
    voter = Voter.new(v_name, v_politics)
    puts "Your voter is: #{voter.name} / #{voter.politics} of class: #{voter.class}"
    voter_records.add_voter(voter)
    puts "Voter List is of class: #{voter_records.class}"
else # Otherwise this is a politician
    puts "Please type the full name of the politician you wish to add:"
    p_name = gets.chomp
    puts "Politicians also need a political party from the following choices:"
    puts "D-Democrat, G-Green, I-Independent or R-Republican"
    puts "Next, please type the Letter for the politican's political party:"
    p_pty = gets.chomp
    case p_pty
        when "D"
            p_party = "Democrat"
        when "G"
            p_party = "Green"
        when "I"
            p_party = "Independent"
        when "R"
            p_party = "Republican"
        else
            p_party = p_pty
    end
    politician = Politician.new(p_name, p_party)
    puts "Your politician is: #{politician.name} / #{politician.party} of class: #{politician.class}"
    politician_records.add_politician(politician)
    puts "Politician List is of class: #{voter_records.class}"
end

PrintLists.print_lists(politician_records.politician_list, voter_records.voter_list)

# PrintLists.print_lists(politician_records.politician_list, voter_records.voter_list)

# close our World
puts " "
puts "**************************"
puts "  Thank you!  Good Night"
puts "**************************"
puts " "






    