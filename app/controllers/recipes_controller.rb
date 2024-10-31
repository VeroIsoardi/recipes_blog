# frozen_string_literal: true

class RecipesController < ApplicationController
  include Pagy::Backend

  before_action :require_authentication, except: %i[index show]
  before_action :set_recipe, only: %i[show edit update destroy]

  def index
    @recipes = Recipe.search_or_all(params[:query])

    @pagy, @recipes = pagy(@recipes.sort_by_title)

    respond_to do |format|
      format.html
      format.turbo_stream
    end
  end

  def show; end

  def new
    @recipe = Recipe.new
  end

  def edit; end

  def create
    @recipe = Recipe.new(recipe_params)

    if @recipe.save
      redirect_to @recipe, notice: 'Receta creada exitosamente'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @recipe.update(recipe_params)
      redirect_to @recipe, notice: 'Receta actualizada exitosamente'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @recipe.destroy!

    redirect_to recipes_path, status: :see_other, notice: 'Receta eliminada exitosamente'
  end

  private

  def set_recipe
    @recipe = Recipe.find(params.expect(:id))
  end

  def recipe_params
    params.expect(recipe: %i[title ingredients steps category])
  end
end
