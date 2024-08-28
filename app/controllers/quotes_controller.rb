class QuotesController < ApplicationController
  before_action :find_quote, only: %I[show edit update destroy]

  def index
    @quotes = current_company.quotes.ordered
  end

  def new
    @quote = Quote.new
  end

  def create
    @quote = current_company.quotes.build(quote_params)

    if @quote.save
      respond_to do |format|
        format.html { redirect_to quotes_path, notice: "Quote was successfully created." }
        format.turbo_stream
      end
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
  end

  def edit
  end

  def update
    if @quote.update(quote_params)
      redirect_to quotes_path, notice: "Quote was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @quote.destroy

    respond_to do |format|
      format.html { redirect_to quotes_path, notice: "Quote was successfully destroyed." }
      format.turbo_stream
    end
  end

  private

  def find_quote
    id = params[:id].to_i
    @quote = current_company.quotes.find(id)
  end

  def quote_params
    params.require(:quote).permit(:name)
  end
end
