class Incident < ActiveRecord::Base
has_many :dbags

  private
  def self.seed
    require 'csv'
    file = File.dirname(__FILE__) + "/incident_seed.csv"
    csv_text = File.read(file)
    csv = CSV.parse(csv_text, :headers => true)
    csv.each do |x|
    hash = {}
    hash[:name]=x[0]
    hash[:descrip]=x[1]
    a = self.new(hash)
    a.save
    end
  end
end

