class Film < ActiveRecord::Base
  column :id, :serial
  column :name, :char(100)
  column :link, :varchar(1000)
  column :url, :string(50)
  column :writeup, :varchar(1000)
  column :credits, :varchar(1000)
  column :still1, :string(10)
end
