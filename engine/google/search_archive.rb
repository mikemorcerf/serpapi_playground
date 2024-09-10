require_relative './scrapper'

module Engine
  module Google
    class SearchArchive < Engine::Google::Scrapper
      class << self
        def archive_request(request_to_archive)
          response = get_page_result_for(
            request_to_archive,
            async: true
          )

          response[:search_metadata][:id]
        end

        def find_by_id(search_id)
          get_archived_search_from_id(search_id)
        end
      end
    end
  end
end
