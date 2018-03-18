class Agent::PagesController < Agent::AgentController

  def show
  	puts "*** Agent::PagesController::show id=#{params[:id]}"
  	page_name = params[:id] || 'error'
	view_file = "#{Rails.root}/app/views/agent/pages/#{page_name}.html.erb"
	if File.exists?(view_file)
		@orders = Order.where(agent: current_agent)
		puts "*** found #{@orders.length} orders"
		render page_name
	else
		# puts "*** view file does not exist"
		render 'error'
	end
  end

end
