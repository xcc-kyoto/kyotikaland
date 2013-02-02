module LandmarksHelper
  def join_keywords(landmark)
    landmark.keywords.map { |k| k.body }.join(", ")
  end

  def join_tags(landmark)
    landmark.tags.map { |k| k.name }.join(", ")
  end
end
