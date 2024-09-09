require_relative './scrapper'

module Engine
  module Bing
    class OrganicSearchUrls < Engine::Bing::Scrapper
      class << self
        def get_urls_for(
          search_param
        )

          generate_response(search_param)
        end

        def generate_response(search_param)
          response = []

          organic_results = get_page_result_for(
            search_param,
            search_hash: :organic_results
          )

          organic_results.map do |result|
            {
              name: result[:title],
              url: result[:link]
            }
          end
        end
      end
    end
  end
end
