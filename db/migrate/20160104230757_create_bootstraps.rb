class CreateBootstraps < ActiveRecord::Migration
  def change
    create_table :bootstraps do |t|
      t.string :title
      t.string :fname
      t.string :lname
      t.integer :rating

      t.timestamps null: false
    end
  end
end
