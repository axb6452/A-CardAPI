class ExpensesController < ProtectedController
  before_action :set_expense, only: [:show, :update, :destroy]

  # GET /expenses
  def index
    # @expenses = Expense.all
    @expenses = current_user.expenses

    render json: @expenses
  end

  # GET /expenses/1
  def show
    render json: @expense
  end

  # POST /expenses
  def create
    # @expense = Expense.new(expense_params)
    @expense = current_user.expenses.create(expense_params)

    if @expense.save
      render json: @expense, status: :created, location: @expense
    else
      render json: @expense.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /expenses/1
  def update
    if @expense.update(expense_params)
      render json: @expense
    else
      render json: @expense.errors, status: :unprocessable_entity
    end
  end

  # DELETE /expenses/1
  def destroy
    @expense.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_expense
      @expense = Expense.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def expense_params
      params.require(:expense).permit(:vehicle, :plate, :total_gallons, :discount_rate, :station_id)
    end
end
