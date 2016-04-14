class RankingsController < ApplicationController
  def want
    @want_rankings = Want.group(:item_id).order('count_id desc').limit(10).count(:id) 
    @want_rankings.transform_keys!{ |key| Item.find(key) }
  end
  
  def have
    @have_rankings = Have.group(:item_id).order('count_id desc').limit(10).count(:id) 
    @have_rankings.transform_keys!{ |key| Item.find(key) }
  end
end
