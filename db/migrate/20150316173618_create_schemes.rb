class CreateSchemes < ActiveRecord::Migration
  def change
    create_table :schemes do |t|
      t.string :background_color
      t.string :text_color
      t.string :font_type
    end
  end
end
