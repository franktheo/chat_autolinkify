FactoryGirl.define do

  factory :user do
    name       'Joe Thornton'

    factory :invalid_user_no_name do
      name nil
    end

  end

end
