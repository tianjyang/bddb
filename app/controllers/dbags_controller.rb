class DbagsController < ApplicationController
  
  def new
  end
  
  def create
    dbag = Dbag.new(dbag_params)
    dbag.save
    redirect_to '/'
  end
  
private
  def dbag_params
    params.require(:dbag).permit(:title, :summary, :plate_num)
  end
  
end
