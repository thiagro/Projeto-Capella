class CreateEpis < ActiveRecord::Migration[5.2]
  def change
    create_table :epis do |t|
      t.string :item
      t.integer :quantidade
      t.string :validade
      t.text :obs

      t.timestamps
    end
  end
end
