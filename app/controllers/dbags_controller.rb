class DbagsController < ApplicationController
  
  def new
  end

  
  def create
    dbag = Dbag.new(dbag_params)
    dbag.save
    
    
    redirect_to root_url
  end
  
private
  def create_new_image_return_id(picture)
    Image.new(dbag_params).save
    Image.last.id
  end
  
  def assign_make_image_id(make)
    filename = make + ".jpg"
    Image.find_by dpics_file_name: filename.id
  end
  
  

  def dbag_params
    
    params.inspect
    params.permit!
    dbag_params = {title: params[:dbag][:title], summary: params[:dbag][:summary], plate_num: params[:dbag][:plate_num]}
    dbag_params[:make_id]= Make.find_by(name: params[:dbag][:make]).id
    dbag_params[:color_id]= Color.find_by(name: params[:dbag][:color]).id
    dbag_params[:incident_id]= Incident.find_by(name: params[:dbag][:incident]).id
    tally_new_dbag(dbag_params)
    dbag_params
  end
  
  def tally_new_dbag(dbag_params)
    color = Color.find(dbag_params[:color_id])
    color.count += 1
    color.save
    
    make = Make.find(dbag_params[:make_id])
    make.count +=1
    make.save
    
    incident = Incident.find(dbag_params[:incident_id])
    incident.count += 1
    incident.save
  end
end
