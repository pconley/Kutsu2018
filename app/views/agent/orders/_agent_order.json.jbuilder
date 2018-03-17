json.extract! agent_order, :id, :agent_id, :status, :notes, :left_size, :left_width, :right_size, :left_width, :style, :description, :created_at, :updated_at
json.url agent_order_url(agent_order, format: :json)
