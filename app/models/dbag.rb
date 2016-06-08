class Dbag < ActiveRecord::Base
  belongs_to :make
  belongs_to :color
  belongs_to :incident
  
  private
  def self.seed
    require 'csv'
    file = File.dirname(__FILE__) + "/seeddata.csv"
    csv_text = File.read(file)
    csv = CSV.parse(csv_text, :headers => true)
    i = 0
    csv.each do |x|
    hash = {}
    hash[:title]=x[0]
    hash[:summary]=x[1]
    hash[:plate_num]=x[2]
    hash[:make_id]=x[3]
    hash[:color_id]=x[4]
    hash[:incident_id]=x[5]
    a = Dbag.new(hash)
    a.save
    end
  end
end
