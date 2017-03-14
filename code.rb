class Ingredient
  attr_accessor :quantity, :unit, :name

  def initialize (quantity, unit, name)
    @quantity = quantity.to_f
    @unit = unit
    @name = name
  end

  def summary
    "#{@quantity} #{@unit} #{@name}"
  end

  ingredient = Ingredient.new(47.0, "lb(s)", "Brussels Sprouts")
  puts ingredient.summary

safe_ingredients = [
  "Brussels sprouts",
  "spinach",
  "eggs",
  "milk",
  "tofu",
  "seitan",
  "bell peppers",
  "quinoa",
  "kale",
  "chocolate",
  "beer",
  "wine",
  "whiskey"]

  def safe_ingredients
    count = 0
    safe = []
    not_safe = []
    safe_ingredient.each do |compare|
      if name = safe.ingredient[count]
        puts "#{name} is valid"
        safe << name
      else
        puts "#{name} is not valid"
        not_safe << name
      end
      count += 1
    end
  end


  def self.parse(ingredient)
    new_ingredient_list = ingredient.split
    Ingredient.new(new_ingredient_list[0], new_ingredient_list[1], new_ingredient_list[2..-1].join(" "))
  end
end

class Recipe
  attr_accessor :name, :ingredient, :instructions

  def initialize (name, ingredient, instructions)
    @name = name
    @ingredient = ingredient
    @instructions = instructions
  end

  def valid_recipe
    if Recipe.ingredient[Ingredient.name] != ingredient.safe_ingredients
      return false
    else
      return true
    end
  end

  def summary
    puts "Name : #{@name}\n\n"
    puts "Ingredients: "
    @ingredient.each do |ingredient|
      puts ingredient.summary
    end
    puts "\n\n"
    puts "Instructions: "
    count = 1
    instruct = 0
    @instructions.each do |index_instruct|
      count
      puts "#{count} - #{instructions[instruct]}"
      count += 1
      instruct += 1
    end
  end

end

name = "Roasted Brussel Sprouts"
ingredient = [
  Ingredient.new(1.5, "lb(s)", "Brussels sprouts"),
  Ingredient.new(3.0, "tbspn(s)", "Good olive oil"),
  Ingredient.new(0.75, "tspn(s)", "Kosher salt"),
  Ingredient.new(0.5, "tspn(s)", "Freshly ground black pepper")
]

instructions = [
  "Preheat oven to 400 degrees F.",
  "Cut off the brown ends of the Brussels sprouts.",
  "Pull off any yellow outer leaves.",
  "Mix them in a bowl with the olive oil, salt and pepper.",
  "Pour them on a sheet pan and roast for 35 to 40 minutes.",
  "They should be until crisp on the outside and tender on the inside.",
  "Shake the pan from time to time to brown the sprouts evenly.",
  "Sprinkle with more kosher salt ( I like these salty like French fries).",
  "Serve and enjoy!"
]

recipe = Recipe.new(name, ingredient, instructions)
recipe.summary
puts "\n\n"

name = "Lemon Berry Tartlets"
ingredient = [
  Ingredient.new(1, "sheet", "Frozen puff pastry"),
  Ingredient.new(1, "tbspn(s)", "All purpose flour"),
  Ingredient.new(1, "beaten", "Egg"),
  Ingredient.new(0.33, "cup", "Lemon curd"),
  Ingredient.new(12, "fresh", "Blackberries"),
  Ingredient.new(1, "tbspn(s)", "Confectioners sugar")
]

instructions = [
  "Preheat oven to 400 degrees F (200 degrees C).",
  "Line a baking sheet with parchment paper or a silicone baking mat.",
  "Place frozen puff pastry sheet on a work surface dusted with flour.",
  "Allow to thaw for 2 to 3 minutes.",
  "Using a 1 1/2 to 2-inch round cookie or biscuit cutter, cut out 12 round pieces.",
  "Place pastry rounds on the prepared baking sheet.",
  "Using a slightly smaller round cookie or biscuit cutter, cut out inner circles in each pastry round, leaving them in place.",
  "Brush each pastry round with beaten egg",
  "Bake in the preheated oven until browned and puffed, 13 to 15 minutes.",
  "Allow to cool completely before filling.",
  "Cut around the small inner circle of each pastry round and gently push it down.",
  "Fill each tartlet with lemon curd and top with a blackberry.",
  "Dust with confectioners' sugar."
]

lemon_recipe = Recipe.new(name, ingredient, instructions)
lemon_recipe.summary
puts "\n\n"

name = "Crispy Onion Rings"
ingredient = [
  Ingredient.new(1/2, "cup", "All purpose flour"),
  Ingredient.new(1/4, "cup", "Cornstarch"),
  Ingredient.new(2, "tablespoons", "Dry potato flakes"),
  Ingredient.new(1/8, "teaspoon", "Cayenne pepper"),
  Ingredient.new(1, "cup", "Chilled Club Soda"),
  Ingredient.new(2, "cups", "Panko bread crumbs"),
  Ingredient.new(2, "cups", "Vegetable oil"),
  Ingredient.new(2, "large", "Onions")
]

instructions = [
  "Whisk together flour, cornstarch, dry potato flakes, and cayenne pepper in a large bowl.",
  "Whisk in club soda to make a smooth batter.",
  "Place panko bread crumbs in a shallow bowl.",
  "Heat oil in a deep fryer or large saucepan to 350 degrees F.",
  "Place a few onion rings at a time into the bowl of batter and turn to coat all sides with batter.",
  "Remove onion rings from the batter.",
  "Place into pan of panko bread crumbs.",
  "Turn to coat completely with crumbs.",
  "Cook a few rings at a time in the hot oil until golden brown.",
  "Transfer to a cooling rack set over paper towls to drain.",
  "Season with salt to taste and serve."
]

onion_recipe = Recipe.new(name, ingredient, instructions)
onion_recipe.summary
