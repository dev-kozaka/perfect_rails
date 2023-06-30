class AddPublisherIdToBooks < ActiveRecord::Migration[7.0]
  def change
    add_column  :books, :publisher_id, :bigint
    add_foreign_key :books, :publishers, column: :publisher_id, primary_key: "id"
  end
end
