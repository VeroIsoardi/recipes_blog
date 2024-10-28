# frozen_string_literal: true

class Recipe < ApplicationRecord
  enum :category, ['plato principal', 'postre', 'snack'].index_by(&:itself)
end
