atom_feed do |feed|
  feed.title("Autometrics")
  feed.update(@results.first.created_at)
  
  @results.each do |result|
    feed.entry(result) do |entry|
      entry.title(result.title)
    end
  end
end
