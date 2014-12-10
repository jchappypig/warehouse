class Order < ActiveRecord::Base
  belongs_to :product

  STATUSES = %w(awaiting send)
end
