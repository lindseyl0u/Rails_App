module ProductsHelper
  def cache_key_for_products
  	count = Product.count
  	max_updated_at = Product.maximum(:updated_at).try(:utc).try(:to_s, :number)
  	"products/all-#{count}-#{max_updated_at}"
  end

  def fetch_products
  	products = $redis.get("products")
  	if products.nil?
  		products = Product.all.to_json
  		$redis.set("products", products)
  		$redis.expire("products", 3.hour.to_i)
  	end
  	@products =  JSON.load products
  end
end
