require_relative './scrapper'

module Engine
  module Google
    class KeywordSerpapiRanking < Engine::Google::Scrapper
      class << self
        def get_ranking_for_keywords(keywords, limit_results: 50)
          result = []

          keywords.each do |keyword|
            result << {
              keyword: keyword,
              serpapi_rank: get_ranking_for(
                keyword,
                limit_results: limit_results
              )
            }
          end

          result
        end

        def get_ranking_for(keyword, limit_results:)
          current_start = 0

          while current_start < limit_results
            response = get_page_result_for(
              keyword,
              search_hash: :organic_results,
              start: current_start
            )

            result = response.find { |item| item[:link].include?('serpapi.com') }

            return (result[:position] + [current_start - 1, 0].max) if result
            current_start += response.length + 1
          end

          "Not found within first #{limit_results} results"
        end
      end
    end
  end
end
