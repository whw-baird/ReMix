class CocktailPolicy
  attr_reader :user, :cocktail

  def initialize(user, cocktail)
    @user = user
    @photo = cocktail
  end

  def show?
    user == cocktail.owner ||
      !cocktail.owner.private? ||
      cocktail.owner.followers.include?(user)
  end
end