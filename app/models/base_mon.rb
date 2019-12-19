class BaseMon < ApplicationRecord

  
  def self.update_list
    response = Unirest.get "https://pokemon-go1.p.rapidapi.com/released_pokemon.json",
      headers:{
        "X-RapidAPI-Host" => ENV["POGO_HOST"],
        "X-RapidAPI-Key" => ENV["POGO_KEY"]
      }
  end
end
