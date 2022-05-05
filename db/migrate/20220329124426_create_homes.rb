class CreateHomes < ActiveRecord::Migration[6.1]
  def change
    create_table :homes do |t|
      t.boolean :truefalse

      t.timestamps
    end
  end
end
