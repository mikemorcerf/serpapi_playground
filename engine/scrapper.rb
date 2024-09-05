require 'google_search_results'
require_relative '../shared/retryable'

module Engine
  class Scrapper
    extend Retryable

    class << self
      def get_page_result_for(search_param)
        params = {
          q: search_param,
          gl: 'us',
          api_key: ENV['SERPAPI_API_KEY']
        }

        search = GoogleSearch.new(params)
        hash_results = search.get_hash
      end
    end
  end
end
