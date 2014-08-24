class User < ActiveRecord::Base
  belongs_to :favorite_wiggle, class_name: 'Wiggle'
end
