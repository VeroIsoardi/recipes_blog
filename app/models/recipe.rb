# frozen_string_literal: true

class Recipe < ApplicationRecord
  has_richer_text :ingredients
  has_richer_text :steps

  enum :category, ['plato principal', 'postre', 'snack'].index_by(&:itself)
end
