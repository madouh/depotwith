class CreateAgents < ActiveRecord::Migration
  def change
    create_table :agents do |t|
      t.string :name
      t.string :email
      t.string :image
      t.string :country
      t.string :city
      t.string :street
      t.date :birth

      t.timestamps
    end
  end
end
