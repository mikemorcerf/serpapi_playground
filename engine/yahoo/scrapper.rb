require 'google_search_results'

module Engine
  module Yahoo
    class Scrapper
      class << self
        def get_page_result_for(
          search_param,
          country: 'us',
          search_hash: nil
        )
          params = {
            engine: 'yahoo',
            p: search_param,
            q: search_param,
            vc: country,
            api_key: ENV['SERPAPI_API_KEY']
          }

          return_response(params, search_hash)
        end

        def return_response(params, search_hash)
          search = GoogleSearch.new(params)
          return search.get_hash unless search_hash
          search.get_hash[search_hash]
        end
      end
    end
  end
end
