# frozen_string_literal: true

class Recipe < ApplicationRecord
  include PgSearch::Model

  has_richer_text :ingredients, store_as: :json
  has_richer_text :steps, store_as: :json

  enum :category, ['plato principal', 'postre', 'snack'].index_by(&:itself)

  scope :sort_by_title, -> { order(:title) }

  pg_search_scope :search,
    against: %i[title category],
    using: {
      tsearch: { prefix: true },
    }

  def self.search_or_all(query)
    query.blank? ? all : search(query)
  end
end
