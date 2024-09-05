require_relative '../scrapper'

module Engine
  module Google
    class Company < Scrapper
      class << self
        def subsidiaries(company)
          response = get_page_result_for("#{company} subsidiaries")
          response[:knowledge_graph][:subsidiaries].map {|subsidiary| subsidiary[:name] }
        end
      end
    end
  end
end
