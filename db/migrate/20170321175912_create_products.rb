class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
    	t.string 	:name, null: false
    	t.text 		:description
    	t.string 	:category
    	t.string	:icon_path
      	t.integer 	:position
    	t.boolean 	:visible, default: false
      	t.timestamps
    end
  end
end
