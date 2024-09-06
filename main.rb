require_relative './setup'

celebrity = 'Taylor Swift'
company = 'Shopify'
local_business = 'Gamestoria'
misspelled_text = 'I like limi pie'
interest_location = 'Smoked BBQ'

raw_famous_birth_date = Raw::Google::Famous.birth_date celebrity
puts "raw_famous_birth_date: \t\t#{celebrity}'s birthdate is #{raw_famous_birth_date}\n\n"

serpapi_famous_birth_date = Engine::Google::Famous.birth_date celebrity
puts "serpapi_famous_birth_date: \t#{celebrity}'s birthdate is #{serpapi_famous_birth_date}\n\n"

serpapi_company_subsidiary = Engine::Google::Company.subsidiaries company
puts "serpapi_company_subsidiary: \t#{company}'s subsidiaries are #{serpapi_company_subsidiary}\n\n"

serpapi_maps_business_info = Engine::Google::BusinessInfo.get_info local_business
puts "serpapi_maps_business_info: \t#{local_business}'s information: #{serpapi_maps_business_info}\n\n"

serpapi_grammar_suggestion = Engine::Google::GrammarSuggestion.get_grammar_suggestion misspelled_text
puts "serpapi_grammar_suggestion: \t\"#{misspelled_text}\" fix suggestion: \"#{serpapi_grammar_suggestion}\"\n\n"

serpapi_locations_from_organic_search = Engine::Google::OrganicSearchUrls.get_locations_for interest_location
puts "serpapi_locations_from_organic_search: \t\"#{interest_location}\"'s places: \"#{serpapi_locations_from_organic_search}\"\n\n"

