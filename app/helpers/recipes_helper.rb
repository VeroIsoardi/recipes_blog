module RecipesHelper
  def category_icon(category)
    return if category.blank?

    icon =
      case category
      when 'plato principal'
        'pizza'
      when 'postre'
        'cake'
      when 'snack'
        'cookie'
      end
  end
end
