require 'httparty'
require 'pp'

class Coursera
  include HTTParty

  base_uri 'https://api.coursera.org/api/catalog.v1/courses'
  # these are params you want to include in every request
  default_params fields: "smallIcon,shortDescription", q: "search"
  format :json

  # you can have multiple methods. The settings above apply for all methods
  # in the class
  def self.for term
    get("", query: {query: term})["elements"]
  end
end

pp Coursera.for "python"
