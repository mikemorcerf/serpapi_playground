require_relative '../scrapper'

module Engine
  module Google
    class OrganicSearchUrls < Scrapper
      class << self
        def get_locations_for(
          search_param,
          num_loc: 10
        )

          generate_response(search_param, num_loc)
        end

        def generate_response(search_param, num_loc)
          response = []
          current_start = 0

          while response.length < num_loc
            current_response = get_page_result_for(
              search_param,
              location: 'Austin,Texas,United States',
              start: current_start
            )

            current_response[:organic_results].each do |result|
              break if response.length >= num_loc
              response << {
                name: result[:title],
                url: result[:link]
              }
            end

            current_start = response.length + 1
          end
          
          response
        end
      end
    end
  end
end
