class Message < ActiveRecord::Base
    include ActiveModel::Model
    include ActiveModel::Conversion
    include ActiveModel::Validations

  attr_accessor :name, :email, :content, :day_of_week, :time_of_day

  enum day_of_week: {
    "Monday" => 0,
    "Tuesday" => 1,
    "Wednesday" => 2,
    "Thursday" => 3,
    "Friday" => 4,
}
  enum time_of_day: {
    "8am - 10am" => 0,
    "10am - 12pm" => 1,
    "1pm - 3pm" => 2,
    "3pm - 5pm" => 3,
}

  validates :name, presence: true

  validates :email, presence: true

  validates :content, presence: true
  
end
