class AddLikeToCompany < ActiveRecord::Migration
  def change
    add_column :companies, :like, :integer, default: 0
  end
end
