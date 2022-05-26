class CocktailIngredientsController < ApplicationController
  before_action :set_cocktail_ingredient, only: %i[ show edit update destroy ]

  # GET /cocktail_ingredients or /cocktail_ingredients.json
  def index
    @cocktail_ingredients = CocktailIngredient.all
  end

  # GET /cocktail_ingredients/1 or /cocktail_ingredients/1.json
  def show
  end

  # GET /cocktail_ingredients/new
  def new
    @cocktail_ingredient = CocktailIngredient.new
  end

  # GET /cocktail_ingredients/1/edit
  def edit
  end

  # POST /cocktail_ingredients or /cocktail_ingredients.json
  def create
    @cocktail_ingredient = CocktailIngredient.new(cocktail_ingredient_params)

    respond_to do |format|
      if @cocktail_ingredient.save
        format.html { redirect_to cocktail_ingredient_url(@cocktail_ingredient), notice: "Cocktail ingredient was successfully created." }
        format.json { render :show, status: :created, location: @cocktail_ingredient }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @cocktail_ingredient.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cocktail_ingredients/1 or /cocktail_ingredients/1.json
  def update
    respond_to do |format|
      if @cocktail_ingredient.update(cocktail_ingredient_params)
        format.html { redirect_to cocktail_ingredient_url(@cocktail_ingredient), notice: "Cocktail ingredient was successfully updated." }
        format.json { render :show, status: :ok, location: @cocktail_ingredient }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @cocktail_ingredient.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cocktail_ingredients/1 or /cocktail_ingredients/1.json
  def destroy
    @cocktail_ingredient.destroy

    respond_to do |format|
      format.html { redirect_to cocktail_ingredients_url, notice: "Cocktail ingredient was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cocktail_ingredient
      @cocktail_ingredient = CocktailIngredient.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cocktail_ingredient_params
      params.require(:cocktail_ingredient).permit(:cocktail_id, :ingredient_id)
    end
end
