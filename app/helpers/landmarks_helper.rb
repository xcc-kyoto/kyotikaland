module LandmarksHelper
  def join_keywords(landmark)
    landmark.keywords.map { |k| k.body }.join(", ")
  end
end
