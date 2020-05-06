require_relative '../config/environment'
require_relative '../db/seeds.rb'
require 'json'
require 'pry'
require_all 'lib'
require_all 'app'

def run
    welcome
    search_terms = get_search_terms
    get_comics_by_publisher_range
end

run

#pp Comic.random

