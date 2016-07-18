class CompanySerializer < ActiveModel::Serializer
  attributes :id, :name, :products, :like
  has_many :products
  def company_products
    object.products
  end
end
