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

serpapi_google_urls_organic_search:     "Smoked BBQ"'s Google URLs: "[{:name=>"Rollin Smoke Austin BBQ – Austin's Favorite Underground BBQ", :url=>"https://rollinsmokeatxbbq.com/"}, {:name=>"12 Essential Barbecue Restaurants in Austin", :url=>"https://austin.eater.com/maps/best-barbecue-austin-restaurants"}, {:name=>"Franklin Barbecue: Home - Austin", :url=>"https://franklinbbq.com/"}, {:name=>"Menu | KG BBQ in Austin, TX", :url=>"https://www.kgbbq.com/menu/"}, {:name=>"Where to Find Austin's Best BBQ", :url=>"https://www.austintexas.org/austin-insider-blog/post/the-ultimate-guide-to-austin-barbecue/"}, {:name=>"Smoked BBQ Source", :url=>"https://www.smokedbbqsource.com/"}, {:name=>"Smoked BBQ Source", :url=>"https://www.youtube.com/c/smokedbbqsource"}, {:name=>"ROLLIN SMOKE BBQ - Updated September 2024", :url=>"https://www.yelp.com/biz/rollin-smoke-bbq-austin"}, {:name=>"Joe's KC BBQ Ships Smoked Meats Nationwide", :url=>"https://www.joeskc.com/collections/brisket-sausage?srsltid=AfmBOorf-kp_I2nTxBNQWdq9Ck8VIhSTwjqcF4ydA6LR5RUAuVRM-htu"}, {:name=>"Joe's KC BBQ Ships Smoked Meats Nationwide", :url=>"https://www.joeskc.com/collections/brisket-sausage?srsltid=AfmBOoqjWHgJ8z9pIJQEcLrp-DER61UVZlx98Bpv6-Be7tCMuitQc0Ub"}]"

serpapi_yahoo_urls_organic_search:      "Smoked BBQ"'s Yahoo URLs: "[{:name=>"Simple Smoked Pulled Pork Butt (Smoked Pork Shoulder)", :url=>"https://heygrillhey.com/simple-smoked-pulled-pork/"}, {:name=>"42 Best Smoker Recipes To Try: Beef, Pork ... - Smoked BBQ Source", :url=>"https://www.smokedbbqsource.com/best-smoker-recipes/"}, {:name=>"Easy Smoky BBQ Pulled Pork - Hey Grill, Hey", :url=>"https://heygrillhey.com/bbq-pulled-pork/"}, {:name=>"17 Smoked BBQ Recipes That Would Make Any Pitmaster Proud", :url=>"https://www.southernliving.com/food/how-to/smoker-barbecue-recipes"}, {:name=>"The 21 Best Meats to Smoke: From Beginner to Expert", :url=>"https://www.smokedbbqsource.com/best-meats-to-smoke/"}, {:name=>"Smoked Pulled Pork - A Beginner's Guide - Smoked Meat Sunday", :url=>"https://www.smokedmeatsunday.com/how-to-make-smoked-pulled-pork/"}, {:name=>"Smoked Beef Ribs - Hey Grill, Hey", :url=>"https://heygrillhey.com/smoked-beef-chuck-ribs/"}]"

serpapi_baidu_urls_organic_search:      "Smoked BBQ"'s Baidu URLs: "[{:name=>"Smoked BBQ - (基韦斯特)餐厅/美食点评 - 餐厅地址/餐厅电...", :url=>"https://www.tripadvisor.cn/Restaurant_Review-g34345-d13636060-Reviews-Smoked_BBQ-Key_West_Florida_Keys_Florida.html"}, {:name=>"Best | Smok'd BBQ | In Delaware", :url=>"https://www.smokdbbq.com/"}, {:name=>"这是彼得堡唯一一个有美式德克萨斯烤炉的BBQ,没去过你就ou...", :url=>"https://zhuanlan.zhihu.com/p/30174789"}, {:name=>"BBQ Cleveland - Restaurants in Cleveland | Real Smoq'e...", :url=>"http://ohiocitybbq.com/"}, {:name=>"Home - Smokin' D's BBQ", :url=>"https://www.smokindsbbq.com/"}, {:name=>"烧烤圈:感受地地道道的美国南部烧烤～～BBQ一定会让你眼界...", :url=>"https://www.sohu.com/a/236739880_99949073"}, {:name=>"Smoked & BBQ Recipes - Meat Eating Military Man", :url=>"https://meateatingmilitaryman.com/"}, {:name=>"「都柏林探店」 烟熏BBQ的作死体验 - 大众点评吃喝玩乐精选", :url=>"https://m.dianping.com/discovery/1011356333"}, {:name=>"Home - Smokin Notes BBQ", :url=>"https://www.smokinnotesbbq.com/"}, {:name=>"Smoked BBQ | City BBQ & Catering | Compton, CA", :url=>"https://www.citycateringcpt.com/"}]"

serpapi_bing_urls_organic_search:       "Smoked BBQ"'s Bing URLs: "[{:name=>"Easy Smoky BBQ Pulled Pork - Hey Grill, Hey", :url=>"https://heygrillhey.com/bbq-pulled-pork/"}, {:name=>"17 Smoked BBQ Recipes That Would Make Any Pitmaster Proud", :url=>"https://www.southernliving.com/food/how-to/smoker-barbecue-recipes"}, {:name=>"Smoked Beef Ribs - Hey Grill, Hey", :url=>"https://heygrillhey.com/smoked-beef-chuck-ribs/"}, {:name=>"Smoked BBQ Ribs - Traeger Grills", :url=>"https://www.bing.com/rebates/welcome?url=https%3a%2f%2fwww.traeger.com%2frecipes%2fsmoked-bbq-ribs&murl=https%3a%2f%2ftraeger.uym8.net%2fc%2f2003851%2f691839%2f10268%3fsharedid%3dbing%26u%3dhttps%253a%252f%252fwww.traeger.com%252frecipes%252fsmoked-bbq-ribs%26subId1%3d&id=traeger&name=traeger&ra=6%&hash=f9c603af4ddc510242096b653303de30b1dbaec91f2c30ca8b57380c125f9abc&network=ImpactRadius"}, {:name=>"Smoked BBQ Source", :url=>"https://www.smokedbbqsource.com/"}, {:name=>"42 Best Smoker Recipes To Try: Beef, Pork, Lamb, Chicken + More", :url=>"https://www.smokedbbqsource.com/best-smoker-recipes/"}, {:name=>"The 21 Best Meats to Smoke: From Beginner to Expert", :url=>"https://www.smokedbbqsource.com/best-meats-to-smoke/"}, {:name=>"Smokehouse Barbecue | Kansas City's Best BBQ Restaurant", :url=>"https://www.smokehousebbq.com/"}, {:name=>"Smoked Pulled Pork - A Beginner's Guide - Smoked …", :url=>"https://www.smokedmeatsunday.com/how-to-make-smoked-pulled-pork/"}]"

serpapi_keyword_ranking for keywords:   "["Google Local Pack API", "Google Organic Results API", "Google Search API", "Google Search Engine API", "Google Search Results API", "google serp api", "Knowledge Graph API", "serp api", "serpapi", "serps api"]"
Result: "[{:keyword=>"Google Local Pack API", :serpapi_rank=>1}, {:keyword=>"Google Organic Results API", :serpapi_rank=>1}, {:keyword=>"Google Search API", :serpapi_rank=>3}, {:keyword=>"Google Search Engine API", :serpapi_rank=>4}, {:keyword=>"Google Search Results API", :serpapi_rank=>3}, {:keyword=>"google serp api", :serpapi_rank=>1}, {:keyword=>"Knowledge Graph API", :serpapi_rank=>5}, {:keyword=>"serp api", :serpapi_rank=>1}, {:keyword=>"serpapi", :serpapi_rank=>1}, {:keyword=>"serps api", :serpapi_rank=>1}]"
```
