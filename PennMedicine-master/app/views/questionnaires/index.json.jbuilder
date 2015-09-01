json.array!(@questionnaires) do |questionnaire|
  json.extract! questionnaire, :id, :question, :user_id
  json.url questionnaire_url(questionnaire, format: :json)
end
