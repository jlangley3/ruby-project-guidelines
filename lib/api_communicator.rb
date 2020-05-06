require 'rest-client'
require 'json'
require 'pry'

def get_api
    #make the web request
    response_string = RestClient.get('http://gateway.marvel.com/v1/public/series?ts=1&apikey=e52d887d0abdb7be3d552bdcd336787f&hash=15898380eb317e59a304343c08c1ae09')
    response_hash = JSON.parse(response_string)
    pp response_hash
  end
  
  
  def send_request(url)
    # sending a request to marvel API
    # takes url as string
    # returns a hash of info about that film
    response = RestClient.get(url)
    return JSON.parse(response)
  end 

 get_api