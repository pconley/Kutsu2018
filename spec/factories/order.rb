FactoryBot.define do
  factory :order do
    agent 
    status "Status"
    notes "Notes"
    left_size "Left Size"
    left_width "Left Width"
    right_size "Right Size"
    right_width "Right Width"
    style "Style"
    description "Description"
  end
end
