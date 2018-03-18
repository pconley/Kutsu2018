class Agent::OrdersController < Agent::AgentController

  before_action :set_order, only: [:show, :edit, :update, :destroy]

  before_action :set_orders # , only: [:show, :edit, :update, :destroy, :index]

  # GET /agent/orders
  # GET /agent/orders.json
  def index
    # puts "*** Agent::OrdersController#index current_agent = #{current_agent}"
    # @orders = Order.where(agent: current_agent)
  end

  # GET /agent/orders/1
  # GET /agent/orders/1.json
  def show
  end

  # GET /agent/orders/new
  def new
    @order = Order.new
  end

  # GET /agent/orders/1/edit
  def edit
  end

  # POST /agent/orders
  # POST /agent/orders.json
  def create
    @order = Order.new(order_params)
    current_agent.orders << @order
    # puts "*** Agent::OrdersController#create order = #{@order}"
    respond_to do |format|
      if @order.save
        format.html { redirect_to agent_order_path(@order), notice: 'Order was successfully created.' }
        format.json { render :show, status: :created, location: @order }
      else
        # puts "*** save failed errors = #{@order.errors.full_messages[0]}"
        format.html { render :new }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /agent/orders/1
  # PATCH/PUT /agent/orders/1.json
  def update
    respond_to do |format|
      if @order.update(order_params)
        format.html { redirect_to agent_order_path(@order), notice: 'Order was successfully updated.' }
        format.json { render :show, status: :ok, location: @order }
      else
        format.html { render :edit }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /agent/orders/1
  # DELETE /agent/orders/1.json
  def destroy
    @order.destroy
    respond_to do |format|
      format.html { redirect_to agent_orders_url, notice: 'Order was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order
      @order = Order.find(params[:id])
    end

    def set_orders
      @orders = Order.where(agent: current_agent)
      puts "*** Agent::OrdersController##{action_name} found #{@orders.length} orders"
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def order_params
      # removed agent_id, status and notes as they are to be used by the admins
      params.require(:order).permit(:left_size, :left_width, :right_size, :right_width, :style, :description)
    end
end
