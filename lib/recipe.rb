class Recipe
  attr_accessor :name, :ingredients, :method_steps

  def initialize(name: '', ingredients: [], method_steps: [])
    @name = name
    @ingredients = ingredients
    @method_steps = method_steps
  end
end
