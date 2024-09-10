# SerpAPI Fun Playground

## 👋 Introduction

This repo is for me to experiment using SerpApi and have fun with.

## 🛠️ Setup

Install gems:
```
bundle install
```

Create `.env` file at the main directory and copy and paste your API key there:

```
SERPAPI_API_KEY=your_secret_api_key
```

Run the `main.rb` script to make the script run:
```
ruby main.rb
```

The script will print the results on the terminal:
```
raw_famous_birth_date:          Taylor Swift's birthdate is December 13, 1989

serpapi_famous_birth_date:      Taylor Swift's birthdate is December 13, 1989

serpapi_company_subsidiary:     Shopify's subsidiaries are ["Oberlo", "Vinderbit Pty Ltd.", "Deliverr", "Checkout Blocks Inc.", "Shopify International Limited", "Tictail", "Solutions Alveo Inc.", "Peel Insights, Inc.", "Kit CRM Inc.", "Handshake Corp.", "Donde Fashion, Inc.", "Shopify Payments (Usa) Inc.", "Shopify Payments (Canada) Inc.", "Shopify Data Processing (Usa) Inc.", "Primer Supply, Inc.", "Atatomic Inc", "Helpful.com Inc.", "Tiny Hearts Limited", "Boltmade Inc.", "Threads Inc."]

serpapi_maps_business_info:     Gamestoria's information: {:open_hours=>[{:monday=>"1–11 PM"}, {:tuesday=>"1–11 PM"}, {:wednesday=>"1–11 PM"}, {:thursday=>"1–11 PM"}, {:friday=>"1–11 PM"}, {:saturday=>"12–8 PM"}, {:sunday=>"12–7 PM"}], :rating=>4.6, :number_of_reviews=>189}

serpapi_grammar_suggestion:     "I like limi pie" fix suggestion: "I like lime pie"

serpapi_google_urls_organic_search:     "Smoked BBQ"'s Google URLs: "[{:name=>"Rollin Smoke Austin BBQ – Best Texas Late Night BBQ", :url=>"https://rollinsmokeatxbbq.com/"}, {:name=>"Menu | KG BBQ in Austin, TX", :url=>"https://www.kgbbq.com/menu/"}, {:name=>"Franklin Barbecue: Home - Austin", :url=>"https://franklinbbq.com/"}, {:name=>"12 Essential Barbecue Restaurants in Austin", :url=>"https://austin.eater.com/maps/best-barbecue-austin-restaurants"}, {:name=>"Where to Find Austin's Best BBQ", :url=>"https://www.austintexas.org/austin-insider-blog/post/the-ultimate-guide-to-austin-barbecue/"}, {:name=>"Smoked BBQ Source", :url=>"https://www.smokedbbqsource.com/"}, {:name=>"Smoked BBQ Source", :url=>"https://www.youtube.com/c/smokedbbqsource"}, {:name=>"ROLLIN SMOKE BBQ - Updated September 2024", :url=>"https://www.yelp.com/biz/rollin-smoke-bbq-austin"}, {:name=>"Joe's KC BBQ Ships Smoked Meats Nationwide", :url=>"https://www.joeskc.com/collections/brisket-sausage?srsltid=AfmBOor7rEp8rsRwYUSIrG_VndHS-QtBpfUEbxgEqf96qFaz2INaWVKx"}, {:name=>"ROLLIN SMOKE BBQ, Austin - Photos & Restaurant Reviews", :url=>"https://www.tripadvisor.com/Restaurant_Review-g30196-d4810018-Reviews-Rollin_Smoke_BBQ-Austin_Texas.html"}]"

serpapi_yahoo_urls_organic_search:      "Smoked BBQ"'s Yahoo URLs: "[{:name=>"Smoke BBQ Restaurant & Bar - Newport News, VA", :url=>"https://smokenn.com/"}, {:name=>"Simple Smoked Pulled Pork Butt (Smoked Pork Shoulder)", :url=>"https://heygrillhey.com/simple-smoked-pulled-pork/"}, {:name=>"Smoke BBQ Restaurant & Bar - Food Menu", :url=>"https://smokenn.com/newport-news-smoke-bbq-restaurant-and-bar-food-menu"}, {:name=>"42 Best Smoker Recipes To Try: Beef, Pork ... - Smoked BBQ Source", :url=>"https://www.smokedbbqsource.com/best-smoker-recipes/"}, {:name=>"Easy Smoky BBQ Pulled Pork - Hey Grill, Hey", :url=>"https://heygrillhey.com/bbq-pulled-pork/"}, {:name=>"17 Smoked BBQ Recipes That Would Make Any Pitmaster Proud", :url=>"https://www.southernliving.com/food/how-to/smoker-barbecue-recipes"}, {:name=>"The 21 Best Meats to Smoke: From Beginner to Expert", :url=>"https://www.smokedbbqsource.com/best-meats-to-smoke/"}, {:name=>"Smoked Beef Ribs - Hey Grill, Hey", :url=>"https://heygrillhey.com/smoked-beef-chuck-ribs/"}, {:name=>"Smoke BBQ Restaurant & Bar - About", :url=>"https://smokenn.com/newport-news-smoke-bbq-restaurant-and-bar-about"}, {:name=>"Smoke - BBQ Restaurant & Bar | Newport News VA - Facebook", :url=>"https://www.facebook.com/SmokeBBQnn/"}]"

serpapi_baidu_urls_organic_search:      "Smoked BBQ"'s Baidu URLs: "[{:name=>"Smoked BBQ - (基韦斯特)餐厅/美食点评 - 餐厅地址/餐厅电...", :url=>"https://www.tripadvisor.cn/Restaurant_Review-g34345-d13636060-Reviews-Smoked_BBQ-Key_West_Florida_Keys_Florida.html"}, {:name=>"Best | Smok'd BBQ | In Delaware", :url=>"https://www.smokdbbq.com/"}, {:name=>"这是彼得堡唯一一个有美式德克萨斯烤炉的BBQ,没去过你就ou...", :url=>"https://zhuanlan.zhihu.com/p/30174789"}, {:name=>"BBQ Cleveland - Restaurants in Cleveland | Real Smoq'e...", :url=>"http://ohiocitybbq.com/"}, {:name=>"Home - Smokin' D's BBQ", :url=>"https://www.smokindsbbq.com/"}, {:name=>"烧烤圈:感受地地道道的美国南部烧烤～～BBQ一定会让你眼界...", :url=>"https://www.sohu.com/a/236739880_99949073"}, {:name=>"Smoked & BBQ Recipes - Meat Eating Military Man", :url=>"https://meateatingmilitaryman.com/"}, {:name=>"「都柏林探店」 烟熏BBQ的作死体验 - 大众点评吃喝玩乐精选", :url=>"https://m.dianping.com/discovery/1011356333"}, {:name=>"Home - Smokin Notes BBQ", :url=>"https://www.smokinnotesbbq.com/"}, {:name=>"Smoked BBQ | City BBQ & Catering | Compton, CA", :url=>"https://www.citycateringcpt.com/"}]"

serpapi_bing_urls_organic_search:       "Smoked BBQ"'s Bing URLs: "[{:name=>"Simple Smoked Pulled Pork Butt (Smoked Pork Shoulder)", :url=>"https://heygrillhey.com/simple-smoked-pulled-pork/"}, {:name=>"Smoked BBQ Source", :url=>"https://www.smokedbbqsource.com/"}]"

serpapi_keyword_ranking for keywords:   "["Google Local Pack API", "Google Organic Results API", "Google Search API", "Google Search Engine API", "Google Search Results API", "google serp api", "Knowledge Graph API", "serp api", "serpapi", "serps api"]"
Result: "[{:keyword=>"Google Local Pack API", :serpapi_rank=>1}, {:keyword=>"Google Organic Results API", :serpapi_rank=>1}, {:keyword=>"Google Search API", :serpapi_rank=>2}, {:keyword=>"Google Search Engine API", :serpapi_rank=>4}, {:keyword=>"Google Search Results API", :serpapi_rank=>3}, {:keyword=>"google serp api", :serpapi_rank=>1}, {:keyword=>"Knowledge Graph API", :serpapi_rank=>6}, {:keyword=>"serp api", :serpapi_rank=>1}, {:keyword=>"serpapi", :serpapi_rank=>1}, {:keyword=>"serps api", :serpapi_rank=>1}]"

serpapi_keyword_ranking_ids:    "["Google Local Pack API", "Google Organic Results API", "Google Search API", "Google Search Engine API", "Google Search Results API", "google serp api", "Knowledge Graph API", "serp api", "serpapi", "serps api"]"
Result: "["66e0bb0beda5f5578b68bbfa", "66e0bb0b175de6bbb4447131", "66e0bb0bb9458daec82813a7", "66e0bb0b1397bab381f63af0", "66e0bb0bf41044ff8c017c50", "66e0bb0bce1e10fba099c92a", "66e0bb0ba3243674af92f271", "66e0bb0cc024d1e10aa5827c", "66e0bb0cf3cbfa72b6b23d69", "66e0bb0ca5aae99616e04c49"]"

archived_keyword_searches for:  "[{:keyword=>"Google Local Pack API", :serpapi_rank=>1}, {:keyword=>"Google Organic Results API", :serpapi_rank=>1}, {:keyword=>"Google Search API", :serpapi_rank=>2}, {:keyword=>"Google Search Engine API", :serpapi_rank=>4}, {:keyword=>"Google Search Results API", :serpapi_rank=>3}, {:keyword=>"google serp api", :serpapi_rank=>1}, {:keyword=>"Knowledge Graph API", :serpapi_rank=>6}, {:keyword=>"serp api", :serpapi_rank=>1}, {:keyword=>"serpapi", :serpapi_rank=>1}, {:keyword=>"serps api", :serpapi_rank=>"Search Still Processing"}]"
Result: "[{:keyword=>"Google Local Pack API", :serpapi_rank=>1}, {:keyword=>"Google Organic Results API", :serpapi_rank=>1}, {:keyword=>"Google Search API", :serpapi_rank=>2}, {:keyword=>"Google Search Engine API", :serpapi_rank=>4}, {:keyword=>"Google Search Results API", :serpapi_rank=>3}, {:keyword=>"google serp api", :serpapi_rank=>1}, {:keyword=>"Knowledge Graph API", :serpapi_rank=>6}, {:keyword=>"serp api", :serpapi_rank=>1}, {:keyword=>"serpapi", :serpapi_rank=>1}, {:keyword=>"serps api", :serpapi_rank=>"Search Still Processing"}]"

archived_search for:    "best virtual reality games in 2024 YTMyv"
Result: "{
  "search_metadata": {
    "id": "66e0bb0fecf150938d305683",
    "status": "Processing",
    "json_endpoint": "https://serpapi.com/searches/5a2d5255f9606027/66e0bb0fecf150938d305683.json",
    "created_at": "2024-09-10 21:33:03 UTC",
    "processed_at": "2024-09-10 21:33:03 UTC",
    "google_url": "https://www.google.com/search?q=best+virtual+reality+games+in+2024+YTMyv&oq=best+virtual+reality+games+in+2024+YTMyv&uule=w+CAIQICIeQXN0b3JpYSxOZXcgWW9yayxVbml0ZWQgU3RhdGVz&gl=us&start=0&sourceid=chrome&ie=UTF-8",
    "total_time_taken": 0.11
  },
  "search_parameters": {
    "engine": "google",
    "q": "best virtual reality games in 2024 YTMyv",
    "location_requested": "Astoria,New York,United States",
    "location_used": "Astoria,New York,United States",
    "google_domain": "google.com",
    "gl": "us",
    "start": 0,
    "device": "desktop"
  }
}"

serpapi_keyword_ranking_using_threads for keywords:     "["Google Local Pack API", "Google Organic Results API", "Google Search API", "Google Search Engine API", "Google Search Results API", "google serp api", "Knowledge Graph API", "serp api", "serpapi", "serps api"]"
Result: "[{:keyword=>"Google Search API", :serpapi_rank=>2}, {:keyword=>"Google Local Pack API", :serpapi_rank=>1}, {:keyword=>"serp api", :serpapi_rank=>1}, {:keyword=>"Google Search Results API", :serpapi_rank=>3}, {:keyword=>"Google Organic Results API", :serpapi_rank=>1}, {:keyword=>"Google Search Engine API", :serpapi_rank=>4}, {:keyword=>"serps api", :serpapi_rank=>1}, {:keyword=>"Knowledge Graph API", :serpapi_rank=>6}, {:keyword=>"google serp api", :serpapi_rank=>1}, {:keyword=>"serpapi", :serpapi_rank=>1}]"
```
