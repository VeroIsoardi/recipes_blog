# frozen_string_literal: true

module RecipesHelper
  def category_icon(category)
    return if category.blank?

    categories_icons = {
      'plato principal' => 'pizza',
      'postre' => 'cake',
      'desayuno y merienda' => 'cookie',
      'snack' => 'popcorn',
      'entrada' => 'bowl-steam',
      'panificados' => 'bread',
      'dips' => 'cheese'
    }

    categories_icons[category]
  end
end
