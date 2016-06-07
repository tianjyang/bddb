class WelcomeController < ApplicationController
  def home
    @dbags = []
    a = Dbag.maximum("id")
    for x in (a..a) do
      @dbags << Dbag.find(x)
    end
    
    @make = []
    Make.all.each do |x|
      @make << x.name
    end
    
    @incident = []
    Incident.all.each do |x|
      @incident << x.name
    end
    
    @color = []
    Color.all.each do |x|
      @color << x.name
    end
  end
end
