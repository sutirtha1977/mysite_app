class CreateTeams < ActiveRecord::Migration[5.0]
  def change
    create_table :teams do |t|
      t.string 	:first_name, limit: 25
      t.string 	:last_name, limit: 50
      t.string  :title
      t.string 	:email, limit: 100, default: '' , null: false
      t.text 	  :description
      t.string  :cell_phone
      t.string	:google
      t.string  :facebook
      t.string  :twitter
      t.string  :linkedin
      t.integer :position
      t.string  :avatar_loc
      t.timestamps
    end
  end
end
