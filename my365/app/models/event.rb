class Event
  include Mongoid::Document
  field :name, type: String
  field :event, type: String
  field :time, type: Time
  field :date, type: Date
end
