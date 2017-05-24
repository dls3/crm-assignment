class Contact

  attr_reader :id
  attr_accessor :first_name, :last_name, :email, :notes

  @@contacts = []
  @@next_id = 1000

  # This method should initialize the contact's attributes
  def initialize
    @first_name = first_name
    @last_name = last_name
    @email = email
    @notes = notes

    @id = @@next_id    # start at @@next_id (1000)
    @@next_id += 1    #increase the id number by one everytime a contact initialized
  end

  # This method should call the initializer,
  # store the newly created contact, and then return it
  def self.create(first_name, last_name, email, notes = "N/A")
    new_contact = Contact.new(first_name, last_name, email, notes = "N/A")
    @@contacts << new_contact
    new_contact
  end

  # This method should return all of the existing contacts
  def self.all
    @@contacts
  end

  # This method should accept an id as an argument
  # and return the contact who has that id
  def self.find(id)
    unique_contact = nil
    @@contacts.each do |contact|
      if id == contact.id
        return unique_contact = contact
      end
    end
    return nil
  end

  # This method should allow you to specify
  # 1. which of the contact's attributes you want to update
  # 2. the new value for that attribute
  # and then make the appropriate change to the contact
  def update(attribute, value)
    if attribute == "first_name"
      self.first_name = value
    elsif attribute == "last_name"
      self.last_name = value
    elsif attribute == "email"
      self.email = value
    elsif attribute == "notes"
      self.notes = value
    end
  end


  # This method should work similarly to the find method above
  # but it should allow you to search for a contact using attributes other than id
  # by specifying both the name of the attribute and the value
  # eg. searching for 'first_name', 'Betty' should return the first contact named Betty
## send method???????
  def self.find_by(attribute, value)
    if attribute == "first_name"
      @@contacts.each do |contact|
        if value == contact.first_name
          return contact
        end
      end
      nil
    elsif attribute == "last_name"
      @@contacts.each do |contact|
        if value == contact.last_name
          return contact
        end
      end
      nil
    elsif attribute == "email"
      @@contacts.each do |contact|
        if value == contact.email
          return contact
        end
      end
      nil
    else attribute == "notes"
      @@contacts.each do |contact|
        if value == contact.notes
          return contact
        end
      end
      nil
    end
  end


  # This method should delete all of the contacts
  def self.delete_all

  end

  def full_name
    "#{@first_name} #{@last_name}"
  end

  # This method should delete the contact
  # HINT: Check the Array class docs for built-in methods that might be useful here
  def delete
    @@contact.delete(self)
  end

  # Feel free to add other methods here, if you need them.

end
