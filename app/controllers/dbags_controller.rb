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
    params.require(:dbag).permit(:title, :summary, :plate_num, :make, :color, :incident)
    dbag_params = {title: params[:dbag][:title], summary: params[:dbag][:summary], plate_num: params[:dbag][:plate_num]}
    dbag_params[:make_id]= Make.find_by(name: params[:dbag][:make]).id
    dbag_params[:color_id]= Color.find_by(name: params[:dbag][:color]).id
    dbag_params[:incident_id]= Incident.find_by(name: params[:dbag][:incident]).id
    dbag_params
  end
  
end
