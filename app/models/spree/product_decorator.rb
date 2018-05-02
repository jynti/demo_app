Spree::Product.class_eval do
  def self.published
    where(publishable: true)
  end
end
