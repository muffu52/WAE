# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    email { 'joe_mam@ait.asia' }
    name { 'joe mama' }
    password { 'password' }
    password_confirmation { 'password' }
  end

#   factory :user_exist, class: User do
#     email { 'joe_dada@ait.asia' }
#     name { 'joe dada' }
#     password { 'password' }
#     password_confirmation { 'password' }
#   end
  #   factory :project do
  #     name { 'My favorite project' }
  #     url { 'http://somewhere.com' }
  #   end
  #   factory :student do
  #     name { 'Joe Student' }
  #     studentid { '123456' }
  #   end
end
