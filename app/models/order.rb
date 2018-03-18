class Order < ApplicationRecord

  belongs_to :agent

  validates_presence_of :style

  validates :status, inclusion: { in: %w(new approved fulfilled), message: "%{value} is not a valid state" }

  after_initialize :init

  def init
      self.status ||= 'new'
  end


  def to_s
  	agent_text = agent ? agent.id.to_s : 'none'
  	"<Order##{id} agent=#{agent_text}>"
  end

end
