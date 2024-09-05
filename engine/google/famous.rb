require_relative '../scrapper'

module Engine
  module Google
    class Famous < Scrapper
      class << self
        def birth_date(famous_person)
          response = get_page_result_for(famous_person)
          response[:knowledge_graph][:born].sub(/\s\(.*/, '')
        end
      end
    end
  end
end
