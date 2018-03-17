class Order < ApplicationRecord

  belongs_to :agent

  validates_presence_of :style

  def to_s
  	agent_text = agent ? agent.id.to_s : 'none'
  	"<Order##{id} agent=#{agent_text}>"
  end

end
