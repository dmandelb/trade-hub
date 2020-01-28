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
    key_list = new_list_hash.keys.sort_by {|k| k.to_i}
    sorted_list = key_list.map { |num| new_list_hash[num] }
    sorted_list.each do |new_mon|
      new_mon.transform_keys! {|k| k == "id"? "dex_num" : "name"}
      self.create(new_mon)
    end

  end
end
