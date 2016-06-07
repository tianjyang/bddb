module ApplicationHelper
    private
  def seed
    require 'csv'    
    csv_text = File.read('seeddata.txt')
    csv = CSV.parse(csv_text, :headers => true)
    print csv
  end
end
