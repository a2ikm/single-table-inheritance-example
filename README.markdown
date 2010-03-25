# 単一テーブル継承（Single Table Inheritance）

## モデル

基本となるPersonモデル：

  class Person < ActiveRecord::Base
  end


Personクラスを継承したMale、Femaleモデル：

  class Male < Person
  end

  class Female < Person
  end


テーブルはPersonに対応するpeopleのみを作成する：

  class CreatePeople <ActiveRecord::Migration
    def self.up
      create_table :people do |t|
        t.column :name, :string
        t.column :type, :string
      end
    end
                                 
    def self.down
      drop_table :people
    end
  end


### 使い方

#### create

  Male.create(:name => "George")
  #=> <Male id: 1, name: "George", type: "Male">

  Female.create(:name => "Joddy")
  #=> <Female id: 2, name: "Joddy", type: "Female">

  Person.create(:name => "John Smith", :type => "Alien")
  #=> <Person id: 3, name: "John Smith", :type: "Alien")


#### find
  
  Female.first
  #=> <Female id: 2, name: "Joddy", type: "Female">

  Person.find(1)
  #=> <Male id: 1, name: "George", type: "Male">

