# frozen_string_literal: true

class Animal < ApplicationRecord
  has_one_attached :avatar

  enum kind: %i[Кіт Собака]
end
