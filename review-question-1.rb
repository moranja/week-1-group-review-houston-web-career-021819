## QUESTION 1

pokemon = [
  {
    "id": 1,
    "name": "bulbasaur",
    "base_experience": 64,
    "height": 7,
    "is_default": true,
    "order": 1,
    "weight": 69,
    "abilities": [
        {
            "is_hidden": true,
            "slot": 3,
            "ability": {
                "name": "chlorophyll",
                "url": "http://pokeapi.co/api/v2/ability/34/"
            }
        }
    ]
},
{
  "id": 3,
  "name": "venusaur",
  "base_experience": 50,
  "height": 10,
  "is_default": true,
  "order": 1,
  "weight": 90,
  "abilities": [
      {
          "is_hidden": true,
          "slot": 3,
          "ability": {
              "name": "fire",
              "url": "http://pokeapi.co/api/v2/ability/38/"
          }
      }
  ]
},
{
  "id": 2,
  "name": "pikachu",
  "base_experience": 60,
  "height": 4,
  "is_default": true,
  "order": 1,
  "weight": 37,
  "abilities": [
      {
          "is_hidden": true,
          "slot": 3,
          "ability": {
              "name": "lightning",
              "url": "http://pokeapi.co/api/v2/ability/30/"
          }
      }
  ]
}
]


# How would you get the url for Bulbasaur's ability?

pokemon.each do |pokemon|
  if pokemon["name"] == "bulbasaur"
    pokemon["ablities"][0]["ability"]["url"]
  end
end

# How would you return the first pokemon with base experience over 40?

pokemon.find do |pokemon|
  pokemon["base_experience"] > 40
end

# How would you return ALL OF THE pokemon with base experience over 40? (Gotta catch em all)

pokemon.select do |pokemon|
  pokemon["base_experience"] > 40
end

# How would you return an array of all of the pokemon's names?

pokemon.map do |pokemon|
  pokemon_list =[]
  pokemon_list << pokemon["names"]
end

# How would you determine whether or not the pokemon array contained any pokemon with a weight greater than 60?
#  whatever method you use should return true if there are any such pokemon, false if not.

pokemon.any? do |pokemon|
  pokemon["weight"] > 60
end
