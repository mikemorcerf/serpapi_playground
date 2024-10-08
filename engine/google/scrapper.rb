require 'google_search_results'
require 'httparty'
require_relative '../../shared/retryable'

module Engine
  module Google
    class Scrapper
      extend Retryable

      class << self
        def get_page_result_for(
          search_param,
          country: 'us',
          location: 'Astoria,New York,United States',
          start: 0,
          search_hash: nil,
          async: false
        )
          params = {
            q: search_param,
            gl: country,
            location: location,
            start: start,
            async: async,
            api_key: ENV['SERPAPI_API_KEY']
          }

          return_response(params, search_hash: search_hash)
        end

        def get_archived_search_from_id(search_id)
          HTTParty.get("https://serpapi.com/searches/#{search_id}?api_key=#{ENV['SERPAPI_API_KEY']}")
        end

        def get_map_result_for(
          search_param,
          country: 'us',
          location: 'Astoria,New York,United States',
          search_hash: nil
        )
          params = {
            engine: 'google_maps',
            q: search_param,
            gl: country,
            location: location,
            api_key: ENV['SERPAPI_API_KEY']
          }

          return_response(params, search_hash: search_hash)
        end

        def return_response(params, search_hash: nil)
          search = GoogleSearch.new(params)
          return search.get_hash unless search_hash
          search.get_hash[search_hash]
        end
      end
    end
  end
end
