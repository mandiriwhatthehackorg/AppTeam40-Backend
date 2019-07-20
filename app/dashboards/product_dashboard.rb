require "administrate/base_dashboard"

class ProductDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    id: Field::Number,
    name_merchant: Field::String,
    title_product: Field::String,
    subtitle_product: Field::String,
    exp_date: Field::DateTime,
    desc_product: Field::String,
    redeem_point: Field::SelectBasic.with_options({
      choices: ['0 - 1.000.000', '1.000.000 - 5.000.000', '5.000.000+']
    }),
    image_url: Field::Carrierwave,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :id,
    :name_merchant,
    :title_product,
    :subtitle_product,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :id,
    :name_merchant,
    :title_product,
    :subtitle_product,
    :exp_date,
    :desc_product,
    :redeem_point,
    :image_url,
    :created_at,
    :updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :name_merchant,
    :title_product,
    :subtitle_product,
    :exp_date,
    :desc_product,
    :redeem_point,
    :image_url,
  ].freeze

  # Overwrite this method to customize how products are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(product)
  #   "Product ##{product.id}"
  # end
end
