require_relative './setup'

celebrity = 'Taylor Swift'
company = 'Shopify'

raw_famous_birth_date = Raw::Google::Famous.birth_date celebrity
puts "raw_famous_birth_date: \t\t#{celebrity}'s birthdate is #{raw_famous_birth_date}"

serpapi_famous_birth_date = Engine::Google::Famous.birth_date celebrity
puts "serpapi_famous_birth_date: \t#{celebrity}'s birthdate is #{serpapi_famous_birth_date}"

serpapi_company_subsidiary = Engine::Google::Company.subsidiaries company
puts "serpapi_company_subsidiary: \t#{company}'s subsidiaries are #{serpapi_company_subsidiary}"


