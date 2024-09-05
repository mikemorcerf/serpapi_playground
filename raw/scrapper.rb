require 'httparty'
require 'nokogiri'
require_relative '../shared/retryable'

module Raw
  class Scrapper
    extend Retryable

    class << self
      def get_page_result_for(search_param)
        url = URI.parse(build_url(search_param))
        response = HTTParty.get(url)
        Nokogiri::HTML(response.body)
      end

      def build_url(search_param)
        query_string_param = search_param.gsub(/\s+/, "+")
        "https://www.google.com/search?q=#{query_string_param}"
      end
    end
  end
end
