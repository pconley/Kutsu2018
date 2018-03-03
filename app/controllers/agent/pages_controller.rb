class Agent::PagesController < ApplicationController

  def show
  	puts "*** Agent::PagesController::show page=#{params[:page]}"
  	page_name = params[:page] || 'error'
	view_file = "#{Rails.root}/app/views/agent/pages/#{page_name}.html.erb"
	if File.exists?(view_file)
		render page_name
	else
		render 'error'
	end
  end

end
