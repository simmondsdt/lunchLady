require 'pry'

require_relative './lunchLadyA'

#sees how much money user has
  #wont let user buy more than how much money there is
  #resets to menu to let user re-choose options
  #constantly displays how much money is left after choosing each order
  #puts how much the meal cost
  #puts how much money user has left after ordering

#asks what main dish
#asks what side dish
#ask if they want another side repeatedly
#ask what desert

#let user clear their choice and start over
#let user see the menu item and a description {item => description} (use a hash)
#let user see the nutritional facts {item => {description => nutrition facts} } (use nested hash)

puts "Hello, what is your name?"
name = gets.strip
puts "Welcome to the Lunch Cafe #{name}"

def choose
  puts "\n1: See the Menu"
  puts "2: Order Lunch"
  puts "3: See previous Lunches"
  puts "4: Quit\n"
end

def main_menu
  puts "---Lunch Cafe Menu---"
  puts "  --Item---Price---Description--"
  menu_options
end

def menu_options
  puts "-Main Dishes-"
    @main_dish.each { |x, i| puts "  #{x[:item]} -" "- $#{x[:price]} -" "- #{x[:description]}" }
  puts "--Side Dishes--"
    @side_dish.each { |x, i| puts "  #{x[:item]} -" "- $#{x[:price]} -" "- #{x[:description]}" }
  puts "---Dessert Items---"
    @dessert.each { |x, i| puts "  #{x[:item]} -" "- $#{x[:price]} -" "- #{x[:description]}" }
  puts "Would you also like to see the nutritional facts? (y/n)"
  see = gets.strip.downcase
  if see == 'y'
    puts "---Nutritional Facts---"
      puts "-Main Dishes"
        @main_dish.each { |x, i| puts "  #{x[:item]}" "- #{x[:calories]} cal. -" }
      puts "--Side Dishes"
        @side_dish.each { |x, i| puts "  #{x[:item]}" "- #{x[:calories]} cal. -" }
      puts "---Dessert Items"
        @dessert.each { |x, i| puts "  #{x[:item]}" "- #{x[:calories]} cal. -" }
  else
    menu
  end
end

def order
end

def previous
end

def wallet
end

def clear_choice
end

def menu
  choose
  puts "What number would you like to choose?"
  choice = gets.strip
  case choice
    when '1'
      main_menu
    when '2'
      order
    when '3'
      previous
    when '4'
      puts "Goodbye"
      exit
    else
      puts "Please input a valid number."
      menu
  end
end

while
  menu
end
