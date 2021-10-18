require_relative 'modules/app_functions'

class Input_Process
  include AppFunctions
  def initialize(book_list, people_list, rentals_list)
    @book_list = book_list
    @people_list = people_list
    @rentals_list = rentals_list
    @create = Create.new
    @show = Show.new
    @show.show_options
    start_app
  end
  def start_app
    user_input = gets.chomp.to_i
    case user_input
    when 1
      @show.show_books(@book_list)
    when 2
      @show.show_people(@people_list)
    when 3
      @create.create_person(@people_list)
    when 4
      @create.create_book(@book_list)
    when 5
      @create.create_rental(@rentals_list, @book_list, @people_list)
    when 6
      @show.show_rentals(@rentals_list)
    when 7
      return
    end
    main(@book_list, @people_list, @rentals_list)
  end
end

def main(book_list_input = [], people_list_input = [], rentals_list_input = [])
  book_list = book_list_input
  people_list = people_list_input
  rentals_list = rentals_list_input
  input_process = Input_Process.new(book_list, people_list, rentals_list)
end

main
# This is outrageous Microverse. Thanks.
