class QuotesController < ApplicationController
  before_action :find_quote, only: %I[show edit update destroy]

  def index
    @quotes = Quote.all
  end

  def new
    @quote = Quote.new
  end

  def create
    @quote = Quote.new(quote_params)

    if @quote.save
      redirect_to quotes_path, notice: "Quote was successfully created."
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
    redirect_to quotes_path, notice: "Quote was successfully destroyed."
  end

  private

  def find_quote
    id = params[:id].to_i
    @quote = Quote.find(id)
  end

  def quote_params
    params.require(:quote).permit(:name)
  end
end
