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

        def get_ranking_for_keywords_using_threads(keywords, limit_results: 50)
          result = []
          threads = []

          keywords.each do |keyword|
            threads << Thread.new do
              result << {
                keyword: keyword,
                serpapi_rank: get_ranking_for(
                  keyword,
                  limit_results: limit_results
                )
              }
            end
          end

          threads.each(&:join)
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

        def archive_keywords(keywords)
          response = []

          keywords.each do |keyword|
            response << get_page_result_for(
              keyword,
              async: true
            )[:search_metadata][:id]
          end

          response
        end

        def find_ranking_by_keyword_ids(keyword_ids)
          response = []

          keyword_ids.each do |keyword_id|
            result = get_archived_search_from_id(keyword_id)
            rank = 'Did not appear on the provided result page'

            if result['search_metadata']['status'] == 'Processing'
              rank = 'Search Still Processing'
            else
              serpapi_result = result['organic_results'].find { |item| item['link'].include?('serpapi.com') }
              rank = serpapi_result['position'] if serpapi_result
            end

            response << {
              keyword: result['search_parameters']['q'],
              serpapi_rank: rank
            }
          end

          response
        end
      end
    end
  end
end
