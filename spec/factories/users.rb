FactoryBot.define do
  factory :user do
    first_name {'Steve'}
    last_name {'Torrence'}
    email {'user@test.com'}
    password {'asdfasdf'}
    password_confirmation {'asdfasdf'}
  end

  factory :admin_user, class: 'AdminUser' do
    first_name {'Admin'}
    last_name {'User'}
    email {'admin@test.com'}
    password {'asdfasdf'}
    password_confirmation {'asdfasdf'}
  end
end