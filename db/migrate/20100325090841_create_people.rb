class CreatePeople < ActiveRecord::Migration
  def self.up
    create_table :people do |t|
      t.column :name, :string
      t.column :type, :string
      t.timestamps
    end
  end

  def self.down
    drop_table :people
  end
end
