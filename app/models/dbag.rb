class Dbag < ActiveRecord::Base
  belongs_to :make
  belongs_to :color
  belongs_to :incident
  
  private
  def self.seed
    require 'csv'
    Color.seed
    Make.seed
    Incident.seed
    file = File.dirname(__FILE__) + "/dbag_seed.csv"
    csv_text = File.read(file)
    csv = CSV.parse(csv_text, :headers => true)
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
