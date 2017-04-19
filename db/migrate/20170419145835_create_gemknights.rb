class CreateGemknights < ActiveRecord::Migration[5.0]
  def change
    create_table :gemknights do |t|

      t.timestamps
    end
  end
end
