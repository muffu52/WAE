# frozen_string_literal: true

json.extract! qoutation, :id, :quote, :created_at, :updated_at
json.url qoutation_url(qoutation, format: :json)
