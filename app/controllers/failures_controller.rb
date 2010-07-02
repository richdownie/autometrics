class FailuresController < ApplicationController
  def index
    @item_feature = Result.item_feature.count
    @activities_feature = Result.activities_feature.count
    
    
    @issue_admin_feature = Result.issue_admin_feature.count
    @issue_aging_feature = Result.issue_aging_feature.count
    @issue_bulk_delete_feature = Result.issue_bulk_delete_feature.count
    @issue_search_feature = Result.issue_search_feature.count
  end

end
