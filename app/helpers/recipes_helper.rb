# frozen_string_literal: true

module RecipesHelper
  def category_icon(category)
    return if category.blank?

    categories_icons = {
      'plato principal': 'pizza',
      'postre': 'cake',
      'snack': 'cookie',
    }

    categories_icons[category]
  end
end
