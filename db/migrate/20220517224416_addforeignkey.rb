class Addforeignkey < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :images, :themes, on_delete: :cascade
  end
end
