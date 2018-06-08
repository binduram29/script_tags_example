class HomeController < ShopifyApp::AuthenticatedController
	SHOPIFY_API_KEY = '4e1908b4ef0313bf06a08ed291a1bc21'
	SHOPIFY_SHARED_SECRET = '28b7f7e036321e8e43dda4f0b46ba791'
  def index
        @products = ShopifyAPI::Product.find(:all, params: { limit: 10 })
    #binding.pry
    @url = 'https://' + ShopifyAPI::Shop.current.domain
    @password = 'Test@1234'

    @script_tags = ShopifyAPI::ScriptTag.all
    @script_tags.each do |script_tag|
        script_tag.destroy
    end
     
    ShopifyAPI::ScriptTag.create(:event => "onload", :src => "https://s3.ap-south-1.amazonaws.com/bindu-bhashwith/scripttag_test.js", display_scope:"order_status")
    @webhooks = ShopifyAPI::Webhook.find(:all)
  end
end
