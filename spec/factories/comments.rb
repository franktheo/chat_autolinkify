FactoryGirl.define do

  factory :comment do
    message_id  '1'
    user_id     '2'
    content     'Marching towards Stanley Cup Final'

    association :user, factory: :user, name: "Joe"

    #factory :invalid_comment_no_content do
    #  content nil
    #end

  end

end
