class BaseMon < ApplicationRecord

  def self.full_list
    self.order(dex_num: :asc)

  end

  
  def self.update_list
    response = Unirest.get "https://pokemon-go1.p.rapidapi.com/released_pokemon.json",
      headers:{
        "X-RapidAPI-Host" => ENV["POGO_HOST"],
        "X-RapidAPI-Key" => ENV["POGO_KEY"]
      }
    new_list_hash = response.body
    current_list = self.all
    current_list.each do |existing_mon|
      new_list_hash.delete(existing_mon.dex_num.to_s)
    end
    new_list_hash.values.each do |new_mon|
      new_mon.transform_keys! {|k| k == "id"? "dex_num" : "name"}
      # binding.pry
      self.create(new_mon)
    end

  end
end
