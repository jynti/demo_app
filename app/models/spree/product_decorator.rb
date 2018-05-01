Spree::Product.class_eval do
  class << self
    alias :orig_active :active

    def active
      orig_active.where(publishable: true)
    end
  end
end
