class Friend
  @@myname = "Fred" # a class variable

  def initialize(name, gender, phone)
    @name, @sex, @phone = name, gender, phone
    # These are instance variables
  end

  def hello # an instance method
    puts "Hi, I'm #{@name}."
  end

  def Friend.our_common_friend # a class method
    puts "We are all friends of #{@@myname}."
  end
end

f1 = Friend.new("Susan", "female", "555-0123")
f2 = Friend.new("Tom", "male", "555-4567")

f1.hello # Hi, I'm Susan.
f2.hello # Hi, I'm Tom.
Friend.our_common_friend
