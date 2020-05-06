# require 'rest-client'
# require 'json'
# require 'pry'

# def get_api
#     #make the web request
#     response_string = RestClient.get('http://gateway.marvel.com/v1/public/characters?ts=1&apikey=e52d887d0abdb7be3d552bdcd336787f&hash=15898380eb317e59a304343c08c1ae09&limit=100&offset=100')
#     response_hash = JSON.parse(response_string)
#     binding.pry
#     response_hash
#   end
  
  
#   def send_request(url)
#     # sending a request to marvel API
#     # takes url as string
#     # returns a hash of info about that film
#     response = RestClient.get(url)
#     return JSON.parse(response)
#   end

#   def series
#     get_api["data"]["results"]
#   end

#   def series_titles
#     series.map do |i|
#         i["title"]
#     end
#   end

# #   def all_characters
# #     char_items = series.map do |i|
# #         i["characters"]["items"]
# #     end
# #     char_items.map do |i|
# #         i[0]
# #     end
# #   end

# #  puts all_characters

# #  get_api