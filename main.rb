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
archive_search = "best virtual reality games in 2024 #{SecureRandom.alphanumeric(5)}"

# Make a script to fetch the date of birth of any famous person using our API.
# For this task, work on two versions. One using direct GET requests and parsing the JSON.
# One using one of our official libraries. (https://github.com/serpapi)
# You can use any of the languages we have an official library in.
# Make a third version from scratch without using SerpApi at all: try to scrape Google directly.
# 
raw_famous_birth_date = Raw::Google::Famous.birth_date celebrity
puts "raw_famous_birth_date: \t\t#{celebrity}'s birthdate is #{raw_famous_birth_date}\n\n"

serpapi_famous_birth_date = Engine::Google::Famous.birth_date celebrity
puts "serpapi_famous_birth_date: \t#{celebrity}'s birthdate is #{serpapi_famous_birth_date}\n\n"

# Make a script to fetch the list of subsidiaries (carousel view like "apple subsidiaries") of any company in the world using our API
# 
serpapi_company_subsidiary = Engine::Google::Company.subsidiaries company
puts "serpapi_company_subsidiary: \t#{company}'s subsidiaries are #{serpapi_company_subsidiary}\n\n"

# Make a script to get the open hours, rating, and number of reviews of a local business using our Google Maps API
# 
serpapi_maps_business_info = Engine::Google::BusinessInfo.get_info local_business
puts "serpapi_maps_business_info: \t#{local_business}'s information: #{serpapi_maps_business_info}\n\n"

# Make a script that suggests a spelling fix to any word misspelled using Google "did you mean?" results through our API
# 
serpapi_grammar_suggestion = Engine::Google::GrammarSuggestion.get_grammar_suggestion misspelled_text
puts "serpapi_grammar_suggestion: \t\"#{misspelled_text}\" fix suggestion: \"#{serpapi_grammar_suggestion}\"\n\n"

# Make a script that get "serpapi" result urls for 10 locations on our Google Organic Search API
# 
serpapi_google_urls_organic_search = Engine::Google::OrganicSearchUrls.get_urls_for interest_location
puts "serpapi_google_urls_organic_search: \t\"#{interest_location}\"'s Google URLs: \"#{serpapi_google_urls_organic_search}\"\n\n"

# Make a script that get "serpapi" result urls with our Google Organic Search API, Yahoo API, Baidu API, and Bing API
# 
serpapi_yahoo_urls_organic_search = Engine::Yahoo::OrganicSearchUrls.get_urls_for interest_location
puts "serpapi_yahoo_urls_organic_search: \t\"#{interest_location}\"'s Yahoo URLs: \"#{serpapi_yahoo_urls_organic_search}\"\n\n"

serpapi_baidu_urls_organic_search = Engine::Baidu::OrganicSearchUrls.get_urls_for interest_location
puts "serpapi_baidu_urls_organic_search: \t\"#{interest_location}\"'s Baidu URLs: \"#{serpapi_baidu_urls_organic_search}\"\n\n"

serpapi_bing_urls_organic_search = Engine::Bing::OrganicSearchUrls.get_urls_for interest_location
puts "serpapi_bing_urls_organic_search: \t\"#{interest_location}\"'s Bing URLs: \"#{serpapi_bing_urls_organic_search}\"\n\n"

# Recreate the script to fetch serpapi.com ranks of the list of keywords we are tracking.
# 
serpapi_keyword_ranking = Engine::Google::KeywordSerpapiRanking.get_ranking_for_keywords keywords
puts "serpapi_keyword_ranking for keywords: \t\"#{keywords}\"\nResult: \"#{serpapi_keyword_ranking}\"\n\n"

# Improve performance of the serpapi.com ranks script by using async=true API parameter.
# async=true allows you to submit the full batch of requests first then get the actual
# results using their search_id and our search archive endpoint.
# (Ref: https://serpapi.com/search-archive-api)
# 
serpapi_keyword_ranking_ids = Engine::Google::KeywordSerpapiRanking.archive_keywords keywords
puts "serpapi_keyword_ranking_ids: \t\"#{keywords}\"\nResult: \"#{serpapi_keyword_ranking_ids}\"\n\n"
archived_keyword_searches = Engine::Google::KeywordSerpapiRanking.find_ranking_by_keyword_ids serpapi_keyword_ranking_ids
puts "archived_keyword_searches for: \t\"#{archived_keyword_searches}\"\nResult: \"#{archived_keyword_searches}\"\n\n"

serpapi_archived_search_id = Engine::Google::SearchArchive.archive_request archive_search
archived_search = Engine::Google::SearchArchive.find_by_id serpapi_archived_search_id
puts "archived_search for: \t\"#{archive_search}\"\nResult: \"#{archived_search}\"\n\n"

# Improve performance of the serpapi.com ranks script by using your language threads using
# the regular async=false flow. Parallelize search submissions to SerpApi with a couple of threads.
# 
serpapi_keyword_ranking_using_threads = Engine::Google::KeywordSerpapiRanking.get_ranking_for_keywords_using_threads keywords
puts "serpapi_keyword_ranking_using_threads for keywords: \t\"#{keywords}\"\nResult: \"#{serpapi_keyword_ranking_using_threads}\"\n\n"
