class Film < ActiveRecord::Base
  column :id, :primary_key
  column :name, :string(100)
  column :link, :text(1000)
  column :url, :string(50)
  column :writeup, :text(1000)
  column :credits, :text(1000)
  column :still1, :string(10)
end
