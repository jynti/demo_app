namespace :products do
  desc "setup spree_products publishable to true initially"
  task :set_publishable => :environment do
    Spree::Product.update_all(publishable: true)
  end
end
