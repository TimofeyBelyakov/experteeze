class Addindextoimages < ActiveRecord::Migration[7.0]
  def change
    add_index  :images, :theme_id
  end
end
