class AddDayOfWeekToMessages < ActiveRecord::Migration
  def change
    add_column :messages, :day_of_week, :integer
    add_column :messages, :time_of_day, :integer
  end
end
