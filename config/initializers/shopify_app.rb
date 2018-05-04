ShopifyApp.configure do |config|
  config.application_name = "My Shopify App"
  config.api_key = "4e1908b4ef0313bf06a08ed291a1bc21"
  config.secret = "28b7f7e036321e8e43dda4f0b46ba791"
  config.scope = "read_orders, read_products, read_script_tags, write_script_tags"
  config.embedded_app = true
  config.after_authenticate_job = false
  config.session_repository = Shop

end
