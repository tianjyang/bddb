class WelcomeController < ApplicationController
  def home
    @newbag = Dbag.new
    
    @dbags = []
    a = Dbag.maximum("id")
    for x in (a-10..a) do
      @dbags << Dbag.find(x)
    end
    
    @make = []
    holder = Make.all
    Make.all.each do |x|
      @make << x.name
    end
  end
end
