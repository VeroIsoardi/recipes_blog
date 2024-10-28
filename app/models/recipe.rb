class Recipe < ApplicationRecord
  enum :category, ['plato principal', 'postre', 'snack'].index_by(&:itself)
end
