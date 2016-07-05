class Dbag < ActiveRecord::Base
  belongs_to :make
  belongs_to :color
  belongs_to :incident
  belongs_to :image
  
  
  private
  # def self.seed
  #   require 'csv'
  #   Color.seed
  #   Make.seed
  #   Incident.seed
  #   file = File.dirname(__FILE__) + "/dbag_seed.csv"
  #   csv_text = File.read(file)
  #   csv = CSV.parse(csv_text, :headers => true)
  #   csv.each do |x|
  #   hash = {}
  #   hash[:title]=x[0]
  #   hash[:summary]=x[1]
  #   hash[:plate_num]=x[2]
  #   hash[:make_id]=x[3]
  #   hash[:color_id]=x[4]
  #   hash[:incident_id]=x[5]
  #   self.tally(hash)
  #   a = Dbag.new(hash)
  #   a.save
  #   end
  # end
  
  def self.tally(dbag_params)
    color = Color.find(dbag_params[:color_id])
    color.count += 1
    color.save
    
    make = Make.find(dbag_params[:make_id])
    make.count +=1
    make.save
    
    incident = Incident.find(dbag_params[:incident_id])
    incident.count += 1
    incident.save
  end
  
end
