class SearchController < ApplicationController

	# Basic search engine, only checking company.name, company.description, mission.name and mission.description
  def index
      @companies = Company.where("UPPER(name) like ? OR UPPER(description) like ?", '%'+params[:q].upcase+'%', '%'+params[:q].upcase+'%');
      @missions = Mission.where("UPPER(name) like ? OR UPPER(description) like ?", '%'+params[:q].upcase+'%', '%'+params[:q].upcase+'%');
  end

end
