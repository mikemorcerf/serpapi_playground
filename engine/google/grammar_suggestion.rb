require_relative './scrapper'

module Engine
  module Google
    class GrammarSuggestion < Engine::Google::Scrapper
      class << self
        def get_grammar_suggestion(text)
          response = get_page_result_for(
            "#{text} grammar check",
            search_hash: :grammar_check
          )

          response[:suggested_text]
        end
      end
    end
  end
end
