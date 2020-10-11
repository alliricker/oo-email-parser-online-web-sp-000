# Build a class EmailAddressParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser
@@all = []
attr_accessor :email_addresses

def initialize(email_addresses)
  @email_addresses = email_addresses
  @@all << self
end

def self.all
  @@all
end

def parse
  self.email_addresses.split(" ").collect { |x| 
  x}.join(" ")
end

end
