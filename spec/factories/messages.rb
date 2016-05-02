FactoryGirl.define do

  factory :message do
    title       'Stanley Cup'
    user_id     '2'
    content     'Marching towards Stanley Cup Final'

    association :user

    factory :invalid_message_no_content do
      content nil
    end

    factory :invalid_message_no_title do
      title nil
    end

  end

end
