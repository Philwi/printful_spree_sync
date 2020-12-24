module PrintfulSpreeSync::Sync
  class Products < PrintfulSpreeSync::Base

    def sync_products
      response = self.class.get('/sync/products', headers: headers)
      return false if response['code'] != '200'
    end

  end
end