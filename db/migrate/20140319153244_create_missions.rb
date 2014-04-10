class CreateMissions < ActiveRecord::Migration
  def change
    create_table :missions do |t|
      t.string :name
      t.text :description
      t.belongs_to :company

      t.timestamps
    end
  end
end
