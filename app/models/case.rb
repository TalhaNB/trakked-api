class Case < ApplicationRecord
  belongs_to :solicitor, class_name: 'User', foreign_key: 'solicitor_id'
  belongs_to :client, class_name: 'User', foreign_key: 'client_id'

  has_one :address
  enum :status, %w[not_started in_progress on_hold completed dropped]
end
