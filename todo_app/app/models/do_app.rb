class DoApp < ApplicationRecord
  validates :title, :description, :status ,presence:true
end
