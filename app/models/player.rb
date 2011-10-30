class Player < ActiveRecord::Base
  validates_presence_of :LastName, :FirstName
end
