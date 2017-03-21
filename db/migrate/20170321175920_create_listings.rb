class CreateListings < ActiveRecord::Migration[5.0]
  def change
    create_table :listings do |t|
		t.integer 	:product_id
		t.string 	:name, null: false
		t.string 	:short_desc
		t.text 		:long_desc
		t.boolean 	:visible, default: false
		t.decimal 	:orig_price, precision: 12, scale:2, default: 0
		t.decimal 	:curr_price, precision: 12, scale:2, default: 0
		t.string  	:image_loc
		t.integer 	:position
		t.timestamps
    end
    add_index(:listings, :product_id)
  end
end
