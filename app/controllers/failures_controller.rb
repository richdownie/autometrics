class FailuresController < ApplicationController
  def index
    @item_feature = Result.item_feature.count
    @activities_feature = Result.activities_feature.count
    @issue_search_feature = Result.issue_search_feature.count
  end

end
