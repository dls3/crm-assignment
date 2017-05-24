require_relative 'contact.rb'

class CRM

  # a_crm_app = CRM.new
  # a_crm_app.main_menu

  def initialize(name)
    @name = name
    puts "This CRM has the name " + name
  end

  def main_menu
    while true # repeat indefinitely
      print_main_menu
      user_selected = gets.to_i
      call_option(user_selected)
    end
  end

  def print_main_menu
    puts '[1] Add a new contact'
    puts '[2] Modify an existing contact'
    puts '[3] Delete a contact'
    puts '[4] Display all the contacts'
    puts '[5] Search by attribute'
    puts '[6] Exit'
    puts 'Enter a number: '
  end

  def call_option(user_selected)
    case user_selected
      when 1 then add_new_contact
      when 2 then modify_existing_contact
      when 3 then delete_contact
      when 4 then display_all_contacts
      when 5 then search_by_attribute
      when 6 then exit
    end
  end

  def add_new_contact
    print 'Enter First Name: '
    first_name = gets.chomp

    print 'Enter Last Name: '
    last_name = gets.chomp

    print 'Enter Email Address: '
    email = gets.chomp

    print 'Enter a Note: '
    note = gets.chomp

    Contact.create(first_name, last_name, email, note)
  end


  def modify_existing_contact
    print 'Enter the attribute you would like to modify: '
    attritube = gets.chomp

    print 'Enter the new value for that attribute: '
    value = gets.chomp

    Contact.update(attribute, value)
  end

  def delete_contact
    print 'Deleting contact...'
    Contact.delete
  end

  def display_all_contacts
    print 'Deleting all contacts...'
    Contact.delete_all
  end

  def search_by_attribute
    print 'Enter the attribute you would like to search for: '
    attritube = gets.chomp

    print 'Enter the new value for that attribute: '
    value = gets.chomp

    Contact.find_by(attribute, value)
  end

end
