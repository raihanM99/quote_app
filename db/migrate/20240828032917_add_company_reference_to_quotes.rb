class AddCompanyReferenceToQuotes < ActiveRecord::Migration[7.2]
  def change
    add_reference :quotes, :company, null: false, foreign_key: true, after: :id
  end
end
