json.array!(@blood_count_records) do |blood_count_record|
  json.extract! blood_count_record, :id, :date, :day[+/-], :wbc[thousand], :anc, :hgb[gm/dl], :plt, :transfusions, :user_id
  json.url blood_count_record_url(blood_count_record, format: :json)
end
