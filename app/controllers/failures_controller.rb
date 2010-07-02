class FailuresController < ApplicationController
  def index
    @item_feature = Result.item_feature.count
  end

end
