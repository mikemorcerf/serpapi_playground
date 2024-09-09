require_relative './scrapper'

module Engine
  module Google
    class Company < Engine::Google::Scrapper
      class << self
        def subsidiaries(company)
          response = get_page_result_for(
            "#{company} subsidiaries",
            search_hash: :knowledge_graph
          )

          response[:subsidiaries].map {|subsidiary| subsidiary[:name] }
        end
      end
    end
  end
end
