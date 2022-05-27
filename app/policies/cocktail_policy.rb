class CocktailPolicy
  attr_reader :user, :cocktail

  def initialize(user, cocktail)
    @user = user
    @cocktail = cocktail
  end

  def show?
    user == cocktail.user ||
      !cocktail.user.private? ||
      cocktail.user.followers.include?(current_user)
  end
end