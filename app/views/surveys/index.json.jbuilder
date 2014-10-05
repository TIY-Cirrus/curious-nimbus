json.array! @surveys do |s|
  json.survey_id s.id
  json.image_url s.picture.url
  json.creator_answer s.creator_answer
  json.choices s.choices
end
