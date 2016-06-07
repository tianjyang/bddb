class Dbag < ActiveRecord::Base
  belongs_to :make
  belongs_to :color
  belongs_to :incident
end
