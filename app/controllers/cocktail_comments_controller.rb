class CocktailCommentsController < ApplicationController
  before_action :set_cocktail_comment, only: %i[ show edit update destroy ]

  # GET /cocktail_comments or /cocktail_comments.json
  def index
    @cocktail_comments = CocktailComment.all
  end

  # GET /cocktail_comments/1 or /cocktail_comments/1.json
  def show
  end

  # GET /cocktail_comments/new
  def new
    @cocktail_comment = CocktailComment.new
  end

  # GET /cocktail_comments/1/edit
  def edit
  end

  # POST /cocktail_comments or /cocktail_comments.json
  def create
    @cocktail_comment = CocktailComment.new(cocktail_comment_params)

    respond_to do |format|
      if @cocktail_comment.save
        format.js
        format.html { redirect_to cocktail_url(@cocktail_comment.cocktail), notice: "Cocktail comment was successfully created." }
        format.json { render :show, status: :created, location: @cocktail_comment }
        
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @cocktail_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cocktail_comments/1 or /cocktail_comments/1.json
  def update
    respond_to do |format|
      if @cocktail_comment.update(cocktail_comment_params)
        format.html { redirect_to cocktail_comment_url(@cocktail_comment), notice: "Cocktail comment was successfully updated." }
        format.json { render :show, status: :ok, location: @cocktail_comment }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @cocktail_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cocktail_comments/1 or /cocktail_comments/1.json
  def destroy
    @cocktail_comment.destroy

    respond_to do |format|
      # format.html { redirect_to cocktail_comments_url, notice: "Cocktail comment was successfully destroyed." }
      format.json { head :no_content }
      format.js
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cocktail_comment
      @cocktail_comment = CocktailComment.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cocktail_comment_params
      params.require(:cocktail_comment).permit(:cocktail_id, :user_id, :body)
    end
end
