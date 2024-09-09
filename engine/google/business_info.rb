require_relative './scrapper'

module Engine
  module Google
    class BusinessInfo < Engine::Google::Scrapper
      @week_order = [:monday, :tuesday, :wednesday, :thursday, :friday, :saturday, :sunday]

      class << self
        def get_info(local_business)
          response = get_map_result_for(
            local_business,
            search_hash: :place_results
          )

          {
            open_hours: sorted_open_hours(response[:hours]),
            rating: response[:rating],
            number_of_reviews: response[:reviews]
          }
        end

        def sorted_open_hours(open_hours)
          open_hours.sort_by { |day| @week_order.index(day.keys.first) }
        end
      end
    end
  end
end
