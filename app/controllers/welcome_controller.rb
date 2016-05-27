class WelcomeController < ApplicationController
  def home
    @newbag = Dbag.new
    @dbags = Dbag.all
    @make = []
    holder = Make.all
    holder.each do |x|
      @make << x.name
    end
  end
end
