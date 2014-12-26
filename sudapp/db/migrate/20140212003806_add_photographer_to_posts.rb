class AddPhotographerToPosts < ActiveRecord::Migration
  def self.up  
    add_column :posts, :post_photographer, :string  
  end  

  def self.down   
  end   
end
