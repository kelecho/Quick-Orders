class Order < ApplicationRecord
  validates :client_name, presence: true, length: { maximum: 40 }
  validates :table, presence: true,
                    numericality: { only_integer: true }
  enum status: { in_line: 0, preparing: 1, ready: 2, canceled: 3, finished: 4 }
  validates :status, presence: true

  belongs_to :user
  has_many :order_products, inverse_of: :order
  accepts_nested_attributes_for :order_products, allow_destroy: true

  def status_name
    return I18n.t("activerecord.attributes.order.status_name.#{status}")
  end
end
