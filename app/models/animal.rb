class Animal < ApplicationRecord
  has_one_attached :avatar

  enum kind: %i[cat dog]
end

