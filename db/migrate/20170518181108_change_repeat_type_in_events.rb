class ChangeRepeatTypeInEvents < ActiveRecord::Migration[5.1]
  def change
  	change_column :events, :repeat, 'integer USING CAST(repeat AS integer)'
  end
end
