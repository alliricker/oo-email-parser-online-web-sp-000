# Build a class EmailAddressParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser
@@all = []
attr_accessor :email_addresses

def initialize(email_addresses)
  @email_addresses = email_addresses
end


def parse
  split_email = email_addresses.split(/[,\s]+/).collect { |x|
  x }
  return_arr = split_email.uniq
  return_arr
end

end

email_addresses = "john@doe.com, person@somewhere.org"
parser = EmailAddressParser.new(email_addresses)

parser.parse
