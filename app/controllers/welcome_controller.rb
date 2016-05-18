class WelcomeController < ApplicationController
  def home
    @newbag = Dbag.new
    @dbags = Dbag.all
  end
end
