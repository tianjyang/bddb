class WelcomeController < ApplicationController
  def home
    @dbags = []
    a = Dbag.maximum("id")
    for x in (a-9..a) do
      @dbags << Dbag.find(x)
    end
    
    @color = [""]
    Color.all.each do |x|
      @color << x.name
    end
    
    @make = [""]
    Make.all.each do |x|
      @make << x.name
    end
    
    @incident = [""]
    Incident.all.each do |x|
      @incident << x.name
    end
  end
 
 def morebags
   render nothing: true
    puts "GET morebags received!"
    bag_page = params[:page].to_i
    @dbags = []
    a = Dbag.maximum("id")-bag_page*10
    for x in (a-9..a) do
      @dbags << Dbag.find(x)
    end
    tp @dbags
  end
  
  

end
