require_relative './setup'

celebrity = 'Taylor Swift'
company = 'Shopify'
local_business = 'Gamestoria'
misspelled_text = 'I like limi pie'
interest_location = 'Smoked BBQ'
keywords = [
  'Google Local Pack API',
  'Google Organic Results API',
  'Google Search API',
  'Google Search Engine API',
  'Google Search Results API',
  'google serp api',
  'Knowledge Graph API',
  'serp api',
  'serpapi',
  'serps api'
]

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

serpapi_google_urls_organic_search = Engine::Google::OrganicSearchUrls.get_urls_for interest_location
puts "serpapi_google_urls_organic_search: \t\"#{interest_location}\"'s Google URLs: \"#{serpapi_google_urls_organic_search}\"\n\n"

serpapi_yahoo_urls_organic_search = Engine::Yahoo::OrganicSearchUrls.get_urls_for interest_location
puts "serpapi_yahoo_urls_organic_search: \t\"#{interest_location}\"'s Yahoo URLs: \"#{serpapi_yahoo_urls_organic_search}\"\n\n"

serpapi_baidu_urls_organic_search = Engine::Baidu::OrganicSearchUrls.get_urls_for interest_location
puts "serpapi_baidu_urls_organic_search: \t\"#{interest_location}\"'s Baidu URLs: \"#{serpapi_baidu_urls_organic_search}\"\n\n"

serpapi_bing_urls_organic_search = Engine::Bing::OrganicSearchUrls.get_urls_for interest_location
puts "serpapi_bing_urls_organic_search: \t\"#{interest_location}\"'s Bing URLs: \"#{serpapi_bing_urls_organic_search}\"\n\n"

serpapi_keyword_ranking = Engine::Google::KeywordSerpapiRanking.get_ranking_for_keywords keywords
puts "serpapi_keyword_ranking for keywords: \t\"#{keywords}\"\nResult: \"#{serpapi_keyword_ranking}\"\n\n"
