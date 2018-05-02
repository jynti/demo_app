Spree::TaxonsHelper.class_eval do
  def taxon_preview(taxon, max = 4)
    products = taxon.active_products.select('DISTINCT (spree_products.id), spree_products.*, spree_products_taxons.position').limit(max)
    if products.size < max
      products_arel = Spree::Product.arel_table
      taxon.descendants.each do |taxon|
        to_get = max - products.length
        products += taxon.active_products.select('DISTINCT (spree_products.id), spree_products.*, spree_products_taxons.position').where(products_arel[:id].not_in(products.map(&:id))).limit(to_get)
        break if products.size >= max
      end
    end
    products.published
  end
end
