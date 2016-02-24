class Api::V1::Merchants::SearchController < Api::V1::BaseController
  def index
    respond_with Merchant.search(merchant_params)
  end

  def show
    respond_with Merchant.find_by(merchant_params)
  end

  private
    def merchant_params
      params.permit(:name, :id, :updated_at, :created_at)
    end
end
