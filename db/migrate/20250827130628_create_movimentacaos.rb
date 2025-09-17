class CreateMovimentacaos < ActiveRecord::Migration[8.0]
  def change
    create_table :movimentacaos do |t|
      t.references :produto, null: false, foreign_key: true
      t.string :tipo
      t.integer :quantidade
      t.datetime :data

      t.timestamps
    end
  end
end
