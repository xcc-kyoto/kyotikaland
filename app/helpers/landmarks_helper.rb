module LandmarksHelper
  def join_keywords(landmark)
    landmark.keywords.map { |k| k.body }.join(", ")
  end

  def join_tags(landmark)
    landmark.tags.map { |k| k.name }.join(", ")
  end

  def map_link(landmark)
    return point(landmark) unless key = ENV["GOOGLE_KEY"]
    link_to point(landmark), map_url(landmark, key), target: "_blank"
  end

  def map_link_all(locations)
    return "" if locations.count == 0
    return "" unless key = ENV["GOOGLE_KEY"]
    map_url(locations.first, key)
    locations.inject(map_url(locations.first, key)) do |query, l|
      point = point(l)
      query + "%7C#{point}"
    end
  end

  private

  def point(landmark)
    "#{landmark.latitude},#{landmark.longitude}"
  end

  def map_url(landmark, google_key)
    base = "http://maps.googleapis.com/maps/api/staticmap"
    attr = "?center=Kyoto&zoom=12&size=700x700&sensor=false"
    key = "&key=#{google_key}"
    point = point(landmark)
    marker = "&markers=%7C#{point}"
    base + attr + key + marker
  end
end
