class Agent::PagesController < Agent::AgentController

  def show
  	puts "*** Agent::PagesController::show id=#{params[:id]}"
  	page_name = params[:id] || 'error'
	view_file = "#{Rails.root}/app/views/agent/pages/#{page_name}.html.erb"
	if File.exists?(view_file)
		render page_name
	else
		# puts "*** file does not exist"
		render 'error'
	end
  end

end
