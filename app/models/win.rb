class win << ActiveModel::Base
  def to_partial_path() "wins/#{kind}" end
end