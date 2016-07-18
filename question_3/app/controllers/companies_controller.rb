class CompaniesController < ApplicationController
  skip_before_filter  :verify_authenticity_token
  def index
    @companies = Company.all
    # respond_to do |format|
    #   format.json {render json: @companies}
    # end
    render json: @companies.to_json(include: {products: {only: :product}})
  end

  def show
    @company = Company.find params[:id]
    respond_to do |format|
      format.json { render json: {company: @company, products: @company.products} }
    end
  end

  def update
    @company = Company.find params[:id]
    @company.update(like: params[:like])
    head :ok
  end

  def company_params
    params.require(:company).permit(:like)
  end
end
