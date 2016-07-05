class WelcomeController < ApplicationController
  def home
    @dbags = []
    a = Dbag.maximum("id")
    
    if !a.nil?
      i = minimum(9,a-1)
      for x in (a-i..a) do
        @dbags << Dbag.find(x)
      end
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
    puts "GET morebags received!"
    bag_page = params[:page].to_i
    @dbags = []
    a = Dbag.maximum("id")-bag_page*10
    puts a
    for x in (a-9..a) do
      unless x < 1
        @dbags << Dbag.find(x)
      end
    end
  end
  
  def analytics
    allMakes = Make.all
    output = []
    output << ["name","count"]
    allMakes.each do |x|
      extraEntry = [x.name,x.count]
      output << extraEntry
    end
    render json: output
  end
  
  private
  def minimum(num1,num2)
    if num1 < num2
      return num1
    else
      return num2
    end
  end
end
