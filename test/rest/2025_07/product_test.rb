# typed: strict
# frozen_string_literal: true

########################################################################################################################
# This file is auto-generated. If you have an issue, please create a GitHub issue.                                     #
########################################################################################################################

$VERBOSE = nil
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), "..", "lib"))

require "minitest/autorun"
require "webmock/minitest"

require "shopify_api"
require_relative "../../test_helper"

class Product202507Test < Test::Unit::TestCase
  def setup
    super

    test_session = ShopifyAPI::Auth::Session.new(id: "id", shop: "test-shop.myshopify.io", access_token: "this_is_a_test_token")
    ShopifyAPI::Context.activate_session(test_session)
    modify_context(api_version: "2025-07")
  end

  def teardown
    super

    ShopifyAPI::Context.deactivate_session
  end

  sig do
    void
  end
  def test_1()
    stub_request(:get, "https://test-shop.myshopify.io/admin/api/2025-07/products.json?ids=632910392%2C921728736")
      .with(
        headers: {"X-Shopify-Access-Token"=>"this_is_a_test_token", "Accept"=>"application/json"},
        body: {}
      )
      .to_return(status: 200, body: JSON.generate({"products" => [{"id" => 632910392, "title" => "IPod Nano - 8GB", "body_html" => "<p>It's the small iPod with one very big idea: Video. Now the world's most popular music player, available in 4GB and 8GB models, lets you enjoy TV shows, movies, video podcasts, and more. The larger, brighter display means amazing picture quality. In six eye-catching colors, iPod nano is stunning all around. And with models starting at just $149, little speaks volumes.</p>", "vendor" => "Apple", "product_type" => "Cult Products", "created_at" => "2025-07-02T11:29:59-05:00", "handle" => "ipod-nano", "updated_at" => "2025-07-02T11:29:59-05:00", "published_at" => "2007-12-31T19:00:00-05:00", "template_suffix" => nil, "published_scope" => "web", "tags" => "Emotive, Flash Memory, MP3, Music", "status" => "active", "admin_graphql_api_id" => "gid://shopify/Product/632910392", "variants" => [{"id" => 808950810, "product_id" => 632910392, "title" => "Pink", "price" => "199.00", "position" => 1, "inventory_policy" => "continue", "compare_at_price" => nil, "option1" => "Pink", "option2" => nil, "option3" => nil, "created_at" => "2025-07-02T11:29:59-05:00", "updated_at" => "2025-07-02T11:29:59-05:00", "taxable" => true, "barcode" => "1234_pink", "fulfillment_service" => "manual", "grams" => 567, "inventory_management" => "shopify", "requires_shipping" => true, "sku" => "IPOD2008PINK", "weight" => 1.25, "weight_unit" => "lb", "inventory_item_id" => 808950810, "inventory_quantity" => 10, "old_inventory_quantity" => 10, "presentment_prices" => [{"price" => {"amount" => "199.00", "currency_code" => "USD"}, "compare_at_price" => nil}], "admin_graphql_api_id" => "gid://shopify/ProductVariant/808950810", "image_id" => 562641783}, {"id" => 49148385, "product_id" => 632910392, "title" => "Red", "price" => "199.00", "position" => 2, "inventory_policy" => "continue", "compare_at_price" => nil, "option1" => "Red", "option2" => nil, "option3" => nil, "created_at" => "2025-07-02T11:29:59-05:00", "updated_at" => "2025-07-02T11:29:59-05:00", "taxable" => true, "barcode" => "1234_red", "fulfillment_service" => "manual", "grams" => 567, "inventory_management" => "shopify", "requires_shipping" => true, "sku" => "IPOD2008RED", "weight" => 1.25, "weight_unit" => "lb", "inventory_item_id" => 49148385, "inventory_quantity" => 20, "old_inventory_quantity" => 20, "presentment_prices" => [{"price" => {"amount" => "199.00", "currency_code" => "USD"}, "compare_at_price" => nil}], "admin_graphql_api_id" => "gid://shopify/ProductVariant/49148385", "image_id" => nil}, {"id" => 39072856, "product_id" => 632910392, "title" => "Green", "price" => "199.00", "position" => 3, "inventory_policy" => "continue", "compare_at_price" => nil, "option1" => "Green", "option2" => nil, "option3" => nil, "created_at" => "2025-07-02T11:29:59-05:00", "updated_at" => "2025-07-02T11:29:59-05:00", "taxable" => true, "barcode" => "1234_green", "fulfillment_service" => "manual", "grams" => 567, "inventory_management" => "shopify", "requires_shipping" => true, "sku" => "IPOD2008GREEN", "weight" => 1.25, "weight_unit" => "lb", "inventory_item_id" => 39072856, "inventory_quantity" => 30, "old_inventory_quantity" => 30, "presentment_prices" => [{"price" => {"amount" => "199.00", "currency_code" => "USD"}, "compare_at_price" => nil}], "admin_graphql_api_id" => "gid://shopify/ProductVariant/39072856", "image_id" => nil}, {"id" => 457924702, "product_id" => 632910392, "title" => "Black", "price" => "199.00", "position" => 4, "inventory_policy" => "continue", "compare_at_price" => nil, "option1" => "Black", "option2" => nil, "option3" => nil, "created_at" => "2025-07-02T11:29:59-05:00", "updated_at" => "2025-07-02T11:29:59-05:00", "taxable" => true, "barcode" => "1234_black", "fulfillment_service" => "manual", "grams" => 567, "inventory_management" => "shopify", "requires_shipping" => true, "sku" => "IPOD2008BLACK", "weight" => 1.25, "weight_unit" => "lb", "inventory_item_id" => 457924702, "inventory_quantity" => 40, "old_inventory_quantity" => 40, "presentment_prices" => [{"price" => {"amount" => "199.00", "currency_code" => "USD"}, "compare_at_price" => nil}], "admin_graphql_api_id" => "gid://shopify/ProductVariant/457924702", "image_id" => nil}], "options" => [{"id" => 594680422, "product_id" => 632910392, "name" => "Color", "position" => 1, "values" => ["Pink", "Red", "Green", "Black"]}], "images" => [{"id" => 850703190, "alt" => nil, "position" => 1, "product_id" => 632910392, "created_at" => "2025-07-02T11:29:59-05:00", "updated_at" => "2025-07-02T11:29:59-05:00", "admin_graphql_api_id" => "gid://shopify/MediaImage/498048120", "width" => 123, "height" => 456, "src" => "https://cdn.shopify.com/s/files/1/0005/4838/0009/products/ipod-nano.png?v=1735835399", "variant_ids" => []}, {"id" => 562641783, "alt" => nil, "position" => 2, "product_id" => 632910392, "created_at" => "2025-07-02T11:29:59-05:00", "updated_at" => "2025-07-02T11:29:59-05:00", "admin_graphql_api_id" => "gid://shopify/MediaImage/1071517486", "width" => 123, "height" => 456, "src" => "https://cdn.shopify.com/s/files/1/0005/4838/0009/products/ipod-nano-2.png?v=1735835399", "variant_ids" => [808950810]}, {"id" => 378407906, "alt" => nil, "position" => 3, "product_id" => 632910392, "created_at" => "2025-07-02T11:29:59-05:00", "updated_at" => "2025-07-02T11:29:59-05:00", "admin_graphql_api_id" => "gid://shopify/MediaImage/220090436", "width" => 123, "height" => 456, "src" => "https://cdn.shopify.com/s/files/1/0005/4838/0009/products/ipod-nano.png?v=1735835399", "variant_ids" => []}], "image" => {"id" => 850703190, "alt" => nil, "position" => 1, "product_id" => 632910392, "created_at" => "2025-07-02T11:29:59-05:00", "updated_at" => "2025-07-02T11:29:59-05:00", "admin_graphql_api_id" => "gid://shopify/MediaImage/498048120", "width" => 123, "height" => 456, "src" => "https://cdn.shopify.com/s/files/1/0005/4838/0009/products/ipod-nano.png?v=1735835399", "variant_ids" => []}}, {"id" => 921728736, "title" => "IPod Touch 8GB", "body_html" => "<p>The iPod Touch has the iPhone's multi-touch interface, with a physical home button off the touch screen. The home screen has a list of buttons for the available applications.</p>", "vendor" => "Apple", "product_type" => "Cult Products", "created_at" => "2025-07-02T11:29:59-05:00", "handle" => "ipod-touch", "updated_at" => "2025-07-02T11:29:59-05:00", "published_at" => "2008-09-25T20:00:00-04:00", "template_suffix" => nil, "published_scope" => "web", "tags" => "", "status" => "active", "admin_graphql_api_id" => "gid://shopify/Product/921728736", "variants" => [{"id" => 447654529, "product_id" => 921728736, "title" => "Black", "price" => "199.00", "position" => 1, "inventory_policy" => "continue", "compare_at_price" => nil, "option1" => "Black", "option2" => nil, "option3" => nil, "created_at" => "2025-07-02T11:29:59-05:00", "updated_at" => "2025-07-02T11:29:59-05:00", "taxable" => true, "barcode" => "1234_black", "fulfillment_service" => "manual", "grams" => 567, "inventory_management" => "shopify", "requires_shipping" => true, "sku" => "IPOD2009BLACK", "weight" => 1.25, "weight_unit" => "lb", "inventory_item_id" => 447654529, "inventory_quantity" => 13, "old_inventory_quantity" => 13, "presentment_prices" => [{"price" => {"amount" => "199.00", "currency_code" => "USD"}, "compare_at_price" => nil}], "admin_graphql_api_id" => "gid://shopify/ProductVariant/447654529", "image_id" => nil}], "options" => [{"id" => 891236591, "product_id" => 921728736, "name" => "Title", "position" => 1, "values" => ["Black"]}], "images" => [], "image" => nil}]}), headers: {})

    response = ShopifyAPI::Product.all(
      ids: "632910392,921728736",
    )

    assert_requested(:get, "https://test-shop.myshopify.io/admin/api/2025-07/products.json?ids=632910392%2C921728736")

    response = response.first if response.respond_to?(:first)

    # Assert attributes are correctly typed preventing Sorbet errors downstream
    if response.respond_to?(:original_state)
      response&.original_state&.each do |key, value|
        begin
          response.send(key)
        rescue TypeError => error
          fail TypeError.new("#{self.class}##{key} is mistyped: #{error.message}")
        end
        response.send(key)
      end
    end
  end

  sig do
    void
  end
  def test_2()
    stub_request(:get, "https://test-shop.myshopify.io/admin/api/2025-07/products.json")
      .with(
        headers: {"X-Shopify-Access-Token"=>"this_is_a_test_token", "Accept"=>"application/json"},
        body: {}
      )
      .to_return(status: 200, body: JSON.generate({"products" => [{"id" => 632910392, "title" => "IPod Nano - 8GB", "body_html" => "<p>It's the small iPod with one very big idea: Video. Now the world's most popular music player, available in 4GB and 8GB models, lets you enjoy TV shows, movies, video podcasts, and more. The larger, brighter display means amazing picture quality. In six eye-catching colors, iPod nano is stunning all around. And with models starting at just $149, little speaks volumes.</p>", "vendor" => "Apple", "product_type" => "Cult Products", "created_at" => "2025-07-02T11:29:59-05:00", "handle" => "ipod-nano", "updated_at" => "2025-07-02T11:29:59-05:00", "published_at" => "2007-12-31T19:00:00-05:00", "template_suffix" => nil, "published_scope" => "web", "tags" => "Emotive, Flash Memory, MP3, Music", "status" => "active", "admin_graphql_api_id" => "gid://shopify/Product/632910392", "variants" => [{"id" => 808950810, "product_id" => 632910392, "title" => "Pink", "price" => "199.00", "position" => 1, "inventory_policy" => "continue", "compare_at_price" => nil, "option1" => "Pink", "option2" => nil, "option3" => nil, "created_at" => "2025-07-02T11:29:59-05:00", "updated_at" => "2025-07-02T11:29:59-05:00", "taxable" => true, "barcode" => "1234_pink", "fulfillment_service" => "manual", "grams" => 567, "inventory_management" => "shopify", "requires_shipping" => true, "sku" => "IPOD2008PINK", "weight" => 1.25, "weight_unit" => "lb", "inventory_item_id" => 808950810, "inventory_quantity" => 10, "old_inventory_quantity" => 10, "presentment_prices" => [{"price" => {"amount" => "199.00", "currency_code" => "USD"}, "compare_at_price" => nil}], "admin_graphql_api_id" => "gid://shopify/ProductVariant/808950810", "image_id" => 562641783}, {"id" => 49148385, "product_id" => 632910392, "title" => "Red", "price" => "199.00", "position" => 2, "inventory_policy" => "continue", "compare_at_price" => nil, "option1" => "Red", "option2" => nil, "option3" => nil, "created_at" => "2025-07-02T11:29:59-05:00", "updated_at" => "2025-07-02T11:29:59-05:00", "taxable" => true, "barcode" => "1234_red", "fulfillment_service" => "manual", "grams" => 567, "inventory_management" => "shopify", "requires_shipping" => true, "sku" => "IPOD2008RED", "weight" => 1.25, "weight_unit" => "lb", "inventory_item_id" => 49148385, "inventory_quantity" => 20, "old_inventory_quantity" => 20, "presentment_prices" => [{"price" => {"amount" => "199.00", "currency_code" => "USD"}, "compare_at_price" => nil}], "admin_graphql_api_id" => "gid://shopify/ProductVariant/49148385", "image_id" => nil}, {"id" => 39072856, "product_id" => 632910392, "title" => "Green", "price" => "199.00", "position" => 3, "inventory_policy" => "continue", "compare_at_price" => nil, "option1" => "Green", "option2" => nil, "option3" => nil, "created_at" => "2025-07-02T11:29:59-05:00", "updated_at" => "2025-07-02T11:29:59-05:00", "taxable" => true, "barcode" => "1234_green", "fulfillment_service" => "manual", "grams" => 567, "inventory_management" => "shopify", "requires_shipping" => true, "sku" => "IPOD2008GREEN", "weight" => 1.25, "weight_unit" => "lb", "inventory_item_id" => 39072856, "inventory_quantity" => 30, "old_inventory_quantity" => 30, "presentment_prices" => [{"price" => {"amount" => "199.00", "currency_code" => "USD"}, "compare_at_price" => nil}], "admin_graphql_api_id" => "gid://shopify/ProductVariant/39072856", "image_id" => nil}, {"id" => 457924702, "product_id" => 632910392, "title" => "Black", "price" => "199.00", "position" => 4, "inventory_policy" => "continue", "compare_at_price" => nil, "option1" => "Black", "option2" => nil, "option3" => nil, "created_at" => "2025-07-02T11:29:59-05:00", "updated_at" => "2025-07-02T11:29:59-05:00", "taxable" => true, "barcode" => "1234_black", "fulfillment_service" => "manual", "grams" => 567, "inventory_management" => "shopify", "requires_shipping" => true, "sku" => "IPOD2008BLACK", "weight" => 1.25, "weight_unit" => "lb", "inventory_item_id" => 457924702, "inventory_quantity" => 40, "old_inventory_quantity" => 40, "presentment_prices" => [{"price" => {"amount" => "199.00", "currency_code" => "USD"}, "compare_at_price" => nil}], "admin_graphql_api_id" => "gid://shopify/ProductVariant/457924702", "image_id" => nil}], "options" => [{"id" => 594680422, "product_id" => 632910392, "name" => "Color", "position" => 1, "values" => ["Pink", "Red", "Green", "Black"]}], "images" => [{"id" => 850703190, "alt" => nil, "position" => 1, "product_id" => 632910392, "created_at" => "2025-07-02T11:29:59-05:00", "updated_at" => "2025-07-02T11:29:59-05:00", "admin_graphql_api_id" => "gid://shopify/MediaImage/498048120", "width" => 123, "height" => 456, "src" => "https://cdn.shopify.com/s/files/1/0005/4838/0009/products/ipod-nano.png?v=1735835399", "variant_ids" => []}, {"id" => 562641783, "alt" => nil, "position" => 2, "product_id" => 632910392, "created_at" => "2025-07-02T11:29:59-05:00", "updated_at" => "2025-07-02T11:29:59-05:00", "admin_graphql_api_id" => "gid://shopify/MediaImage/1071517486", "width" => 123, "height" => 456, "src" => "https://cdn.shopify.com/s/files/1/0005/4838/0009/products/ipod-nano-2.png?v=1735835399", "variant_ids" => [808950810]}, {"id" => 378407906, "alt" => nil, "position" => 3, "product_id" => 632910392, "created_at" => "2025-07-02T11:29:59-05:00", "updated_at" => "2025-07-02T11:29:59-05:00", "admin_graphql_api_id" => "gid://shopify/MediaImage/220090436", "width" => 123, "height" => 456, "src" => "https://cdn.shopify.com/s/files/1/0005/4838/0009/products/ipod-nano.png?v=1735835399", "variant_ids" => []}], "image" => {"id" => 850703190, "alt" => nil, "position" => 1, "product_id" => 632910392, "created_at" => "2025-07-02T11:29:59-05:00", "updated_at" => "2025-07-02T11:29:59-05:00", "admin_graphql_api_id" => "gid://shopify/MediaImage/498048120", "width" => 123, "height" => 456, "src" => "https://cdn.shopify.com/s/files/1/0005/4838/0009/products/ipod-nano.png?v=1735835399", "variant_ids" => []}}, {"id" => 921728736, "title" => "IPod Touch 8GB", "body_html" => "<p>The iPod Touch has the iPhone's multi-touch interface, with a physical home button off the touch screen. The home screen has a list of buttons for the available applications.</p>", "vendor" => "Apple", "product_type" => "Cult Products", "created_at" => "2025-07-02T11:29:59-05:00", "handle" => "ipod-touch", "updated_at" => "2025-07-02T11:29:59-05:00", "published_at" => "2008-09-25T20:00:00-04:00", "template_suffix" => nil, "published_scope" => "web", "tags" => "", "status" => "active", "admin_graphql_api_id" => "gid://shopify/Product/921728736", "variants" => [{"id" => 447654529, "product_id" => 921728736, "title" => "Black", "price" => "199.00", "position" => 1, "inventory_policy" => "continue", "compare_at_price" => nil, "option1" => "Black", "option2" => nil, "option3" => nil, "created_at" => "2025-07-02T11:29:59-05:00", "updated_at" => "2025-07-02T11:29:59-05:00", "taxable" => true, "barcode" => "1234_black", "fulfillment_service" => "manual", "grams" => 567, "inventory_management" => "shopify", "requires_shipping" => true, "sku" => "IPOD2009BLACK", "weight" => 1.25, "weight_unit" => "lb", "inventory_item_id" => 447654529, "inventory_quantity" => 13, "old_inventory_quantity" => 13, "presentment_prices" => [{"price" => {"amount" => "199.00", "currency_code" => "USD"}, "compare_at_price" => nil}], "admin_graphql_api_id" => "gid://shopify/ProductVariant/447654529", "image_id" => nil}], "options" => [{"id" => 891236591, "product_id" => 921728736, "name" => "Title", "position" => 1, "values" => ["Black"]}], "images" => [], "image" => nil}]}), headers: {})

    response = ShopifyAPI::Product.all

    assert_requested(:get, "https://test-shop.myshopify.io/admin/api/2025-07/products.json")

    response = response.first if response.respond_to?(:first)

    # Assert attributes are correctly typed preventing Sorbet errors downstream
    if response.respond_to?(:original_state)
      response&.original_state&.each do |key, value|
        begin
          response.send(key)
        rescue TypeError => error
          fail TypeError.new("#{self.class}##{key} is mistyped: #{error.message}")
        end
        response.send(key)
      end
    end
  end

  sig do
    void
  end
  def test_3()
    stub_request(:get, "https://test-shop.myshopify.io/admin/api/2025-07/products.json?since_id=632910392")
      .with(
        headers: {"X-Shopify-Access-Token"=>"this_is_a_test_token", "Accept"=>"application/json"},
        body: {}
      )
      .to_return(status: 200, body: JSON.generate({"products" => [{"id" => 921728736, "title" => "IPod Touch 8GB", "body_html" => "<p>The iPod Touch has the iPhone's multi-touch interface, with a physical home button off the touch screen. The home screen has a list of buttons for the available applications.</p>", "vendor" => "Apple", "product_type" => "Cult Products", "created_at" => "2025-07-02T11:29:59-05:00", "handle" => "ipod-touch", "updated_at" => "2025-07-02T11:29:59-05:00", "published_at" => "2008-09-25T20:00:00-04:00", "template_suffix" => nil, "published_scope" => "web", "tags" => "", "status" => "active", "admin_graphql_api_id" => "gid://shopify/Product/921728736", "variants" => [{"id" => 447654529, "product_id" => 921728736, "title" => "Black", "price" => "199.00", "position" => 1, "inventory_policy" => "continue", "compare_at_price" => nil, "option1" => "Black", "option2" => nil, "option3" => nil, "created_at" => "2025-07-02T11:29:59-05:00", "updated_at" => "2025-07-02T11:29:59-05:00", "taxable" => true, "barcode" => "1234_black", "fulfillment_service" => "manual", "grams" => 567, "inventory_management" => "shopify", "requires_shipping" => true, "sku" => "IPOD2009BLACK", "weight" => 1.25, "weight_unit" => "lb", "inventory_item_id" => 447654529, "inventory_quantity" => 13, "old_inventory_quantity" => 13, "presentment_prices" => [{"price" => {"amount" => "199.00", "currency_code" => "USD"}, "compare_at_price" => nil}], "admin_graphql_api_id" => "gid://shopify/ProductVariant/447654529", "image_id" => nil}], "options" => [{"id" => 891236591, "product_id" => 921728736, "name" => "Title", "position" => 1, "values" => ["Black"]}], "images" => [], "image" => nil}]}), headers: {})

    response = ShopifyAPI::Product.all(
      since_id: "632910392",
    )

    assert_requested(:get, "https://test-shop.myshopify.io/admin/api/2025-07/products.json?since_id=632910392")

    response = response.first if response.respond_to?(:first)

    # Assert attributes are correctly typed preventing Sorbet errors downstream
    if response.respond_to?(:original_state)
      response&.original_state&.each do |key, value|
        begin
          response.send(key)
        rescue TypeError => error
          fail TypeError.new("#{self.class}##{key} is mistyped: #{error.message}")
        end
        response.send(key)
      end
    end
  end

  sig do
    void
  end
  def test_4()
    stub_request(:get, "https://test-shop.myshopify.io/admin/api/2025-07/products.json?collection_id=841564295")
      .with(
        headers: {"X-Shopify-Access-Token"=>"this_is_a_test_token", "Accept"=>"application/json"},
        body: {}
      )
      .to_return(status: 200, body: JSON.generate({"products" => [{"id" => 632910392, "title" => "IPod Nano - 8GB", "body_html" => "<p>It's the small iPod with one very big idea: Video. Now the world's most popular music player, available in 4GB and 8GB models, lets you enjoy TV shows, movies, video podcasts, and more. The larger, brighter display means amazing picture quality. In six eye-catching colors, iPod nano is stunning all around. And with models starting at just $149, little speaks volumes.</p>", "vendor" => "Apple", "product_type" => "Cult Products", "created_at" => "2025-07-02T11:29:59-05:00", "handle" => "ipod-nano", "updated_at" => "2025-07-02T11:29:59-05:00", "published_at" => "2007-12-31T19:00:00-05:00", "template_suffix" => nil, "published_scope" => "web", "tags" => "Emotive, Flash Memory, MP3, Music", "status" => "active", "admin_graphql_api_id" => "gid://shopify/Product/632910392", "variants" => [{"id" => 808950810, "product_id" => 632910392, "title" => "Pink", "price" => "199.00", "position" => 1, "inventory_policy" => "continue", "compare_at_price" => nil, "option1" => "Pink", "option2" => nil, "option3" => nil, "created_at" => "2025-07-02T11:29:59-05:00", "updated_at" => "2025-07-02T11:29:59-05:00", "taxable" => true, "barcode" => "1234_pink", "fulfillment_service" => "manual", "grams" => 567, "inventory_management" => "shopify", "requires_shipping" => true, "sku" => "IPOD2008PINK", "weight" => 1.25, "weight_unit" => "lb", "inventory_item_id" => 808950810, "inventory_quantity" => 10, "old_inventory_quantity" => 10, "presentment_prices" => [{"price" => {"amount" => "199.00", "currency_code" => "USD"}, "compare_at_price" => nil}], "admin_graphql_api_id" => "gid://shopify/ProductVariant/808950810", "image_id" => 562641783}, {"id" => 49148385, "product_id" => 632910392, "title" => "Red", "price" => "199.00", "position" => 2, "inventory_policy" => "continue", "compare_at_price" => nil, "option1" => "Red", "option2" => nil, "option3" => nil, "created_at" => "2025-07-02T11:29:59-05:00", "updated_at" => "2025-07-02T11:29:59-05:00", "taxable" => true, "barcode" => "1234_red", "fulfillment_service" => "manual", "grams" => 567, "inventory_management" => "shopify", "requires_shipping" => true, "sku" => "IPOD2008RED", "weight" => 1.25, "weight_unit" => "lb", "inventory_item_id" => 49148385, "inventory_quantity" => 20, "old_inventory_quantity" => 20, "presentment_prices" => [{"price" => {"amount" => "199.00", "currency_code" => "USD"}, "compare_at_price" => nil}], "admin_graphql_api_id" => "gid://shopify/ProductVariant/49148385", "image_id" => nil}, {"id" => 39072856, "product_id" => 632910392, "title" => "Green", "price" => "199.00", "position" => 3, "inventory_policy" => "continue", "compare_at_price" => nil, "option1" => "Green", "option2" => nil, "option3" => nil, "created_at" => "2025-07-02T11:29:59-05:00", "updated_at" => "2025-07-02T11:29:59-05:00", "taxable" => true, "barcode" => "1234_green", "fulfillment_service" => "manual", "grams" => 567, "inventory_management" => "shopify", "requires_shipping" => true, "sku" => "IPOD2008GREEN", "weight" => 1.25, "weight_unit" => "lb", "inventory_item_id" => 39072856, "inventory_quantity" => 30, "old_inventory_quantity" => 30, "presentment_prices" => [{"price" => {"amount" => "199.00", "currency_code" => "USD"}, "compare_at_price" => nil}], "admin_graphql_api_id" => "gid://shopify/ProductVariant/39072856", "image_id" => nil}, {"id" => 457924702, "product_id" => 632910392, "title" => "Black", "price" => "199.00", "position" => 4, "inventory_policy" => "continue", "compare_at_price" => nil, "option1" => "Black", "option2" => nil, "option3" => nil, "created_at" => "2025-07-02T11:29:59-05:00", "updated_at" => "2025-07-02T11:29:59-05:00", "taxable" => true, "barcode" => "1234_black", "fulfillment_service" => "manual", "grams" => 567, "inventory_management" => "shopify", "requires_shipping" => true, "sku" => "IPOD2008BLACK", "weight" => 1.25, "weight_unit" => "lb", "inventory_item_id" => 457924702, "inventory_quantity" => 40, "old_inventory_quantity" => 40, "presentment_prices" => [{"price" => {"amount" => "199.00", "currency_code" => "USD"}, "compare_at_price" => nil}], "admin_graphql_api_id" => "gid://shopify/ProductVariant/457924702", "image_id" => nil}], "options" => [{"id" => 594680422, "product_id" => 632910392, "name" => "Color", "position" => 1, "values" => ["Pink", "Red", "Green", "Black"]}], "images" => [{"id" => 850703190, "alt" => nil, "position" => 1, "product_id" => 632910392, "created_at" => "2025-07-02T11:29:59-05:00", "updated_at" => "2025-07-02T11:29:59-05:00", "admin_graphql_api_id" => "gid://shopify/MediaImage/498048120", "width" => 123, "height" => 456, "src" => "https://cdn.shopify.com/s/files/1/0005/4838/0009/products/ipod-nano.png?v=1735835399", "variant_ids" => []}, {"id" => 562641783, "alt" => nil, "position" => 2, "product_id" => 632910392, "created_at" => "2025-07-02T11:29:59-05:00", "updated_at" => "2025-07-02T11:29:59-05:00", "admin_graphql_api_id" => "gid://shopify/MediaImage/1071517486", "width" => 123, "height" => 456, "src" => "https://cdn.shopify.com/s/files/1/0005/4838/0009/products/ipod-nano-2.png?v=1735835399", "variant_ids" => [808950810]}, {"id" => 378407906, "alt" => nil, "position" => 3, "product_id" => 632910392, "created_at" => "2025-07-02T11:29:59-05:00", "updated_at" => "2025-07-02T11:29:59-05:00", "admin_graphql_api_id" => "gid://shopify/MediaImage/220090436", "width" => 123, "height" => 456, "src" => "https://cdn.shopify.com/s/files/1/0005/4838/0009/products/ipod-nano.png?v=1735835399", "variant_ids" => []}], "image" => {"id" => 850703190, "alt" => nil, "position" => 1, "product_id" => 632910392, "created_at" => "2025-07-02T11:29:59-05:00", "updated_at" => "2025-07-02T11:29:59-05:00", "admin_graphql_api_id" => "gid://shopify/MediaImage/498048120", "width" => 123, "height" => 456, "src" => "https://cdn.shopify.com/s/files/1/0005/4838/0009/products/ipod-nano.png?v=1735835399", "variant_ids" => []}}]}), headers: {})

    response = ShopifyAPI::Product.all(
      collection_id: "841564295",
    )

    assert_requested(:get, "https://test-shop.myshopify.io/admin/api/2025-07/products.json?collection_id=841564295")

    response = response.first if response.respond_to?(:first)

    # Assert attributes are correctly typed preventing Sorbet errors downstream
    if response.respond_to?(:original_state)
      response&.original_state&.each do |key, value|
        begin
          response.send(key)
        rescue TypeError => error
          fail TypeError.new("#{self.class}##{key} is mistyped: #{error.message}")
        end
        response.send(key)
      end
    end
  end

  sig do
    void
  end
  def test_5()
    stub_request(:get, "https://test-shop.myshopify.io/admin/api/2025-07/products.json?presentment_currencies=USD")
      .with(
        headers: {"X-Shopify-Access-Token"=>"this_is_a_test_token", "Accept"=>"application/json"},
        body: {}
      )
      .to_return(status: 200, body: JSON.generate({"products" => [{"id" => 632910392, "title" => "IPod Nano - 8GB", "body_html" => "<p>It's the small iPod with one very big idea: Video. Now the world's most popular music player, available in 4GB and 8GB models, lets you enjoy TV shows, movies, video podcasts, and more. The larger, brighter display means amazing picture quality. In six eye-catching colors, iPod nano is stunning all around. And with models starting at just $149, little speaks volumes.</p>", "vendor" => "Apple", "product_type" => "Cult Products", "created_at" => "2025-07-02T11:29:59-05:00", "handle" => "ipod-nano", "updated_at" => "2025-07-02T11:29:59-05:00", "published_at" => "2007-12-31T19:00:00-05:00", "template_suffix" => nil, "published_scope" => "web", "tags" => "Emotive, Flash Memory, MP3, Music", "status" => "active", "admin_graphql_api_id" => "gid://shopify/Product/632910392", "variants" => [{"id" => 808950810, "product_id" => 632910392, "title" => "Pink", "price" => "199.00", "position" => 1, "inventory_policy" => "continue", "compare_at_price" => nil, "option1" => "Pink", "option2" => nil, "option3" => nil, "created_at" => "2025-07-02T11:29:59-05:00", "updated_at" => "2025-07-02T11:29:59-05:00", "taxable" => true, "barcode" => "1234_pink", "fulfillment_service" => "manual", "grams" => 567, "inventory_management" => "shopify", "requires_shipping" => true, "sku" => "IPOD2008PINK", "weight" => 1.25, "weight_unit" => "lb", "inventory_item_id" => 808950810, "inventory_quantity" => 10, "old_inventory_quantity" => 10, "presentment_prices" => [{"price" => {"amount" => "199.00", "currency_code" => "USD"}, "compare_at_price" => nil}], "admin_graphql_api_id" => "gid://shopify/ProductVariant/808950810", "image_id" => 562641783}, {"id" => 49148385, "product_id" => 632910392, "title" => "Red", "price" => "199.00", "position" => 2, "inventory_policy" => "continue", "compare_at_price" => nil, "option1" => "Red", "option2" => nil, "option3" => nil, "created_at" => "2025-07-02T11:29:59-05:00", "updated_at" => "2025-07-02T11:29:59-05:00", "taxable" => true, "barcode" => "1234_red", "fulfillment_service" => "manual", "grams" => 567, "inventory_management" => "shopify", "requires_shipping" => true, "sku" => "IPOD2008RED", "weight" => 1.25, "weight_unit" => "lb", "inventory_item_id" => 49148385, "inventory_quantity" => 20, "old_inventory_quantity" => 20, "presentment_prices" => [{"price" => {"amount" => "199.00", "currency_code" => "USD"}, "compare_at_price" => nil}], "admin_graphql_api_id" => "gid://shopify/ProductVariant/49148385", "image_id" => nil}, {"id" => 39072856, "product_id" => 632910392, "title" => "Green", "price" => "199.00", "position" => 3, "inventory_policy" => "continue", "compare_at_price" => nil, "option1" => "Green", "option2" => nil, "option3" => nil, "created_at" => "2025-07-02T11:29:59-05:00", "updated_at" => "2025-07-02T11:29:59-05:00", "taxable" => true, "barcode" => "1234_green", "fulfillment_service" => "manual", "grams" => 567, "inventory_management" => "shopify", "requires_shipping" => true, "sku" => "IPOD2008GREEN", "weight" => 1.25, "weight_unit" => "lb", "inventory_item_id" => 39072856, "inventory_quantity" => 30, "old_inventory_quantity" => 30, "presentment_prices" => [{"price" => {"amount" => "199.00", "currency_code" => "USD"}, "compare_at_price" => nil}], "admin_graphql_api_id" => "gid://shopify/ProductVariant/39072856", "image_id" => nil}, {"id" => 457924702, "product_id" => 632910392, "title" => "Black", "price" => "199.00", "position" => 4, "inventory_policy" => "continue", "compare_at_price" => nil, "option1" => "Black", "option2" => nil, "option3" => nil, "created_at" => "2025-07-02T11:29:59-05:00", "updated_at" => "2025-07-02T11:29:59-05:00", "taxable" => true, "barcode" => "1234_black", "fulfillment_service" => "manual", "grams" => 567, "inventory_management" => "shopify", "requires_shipping" => true, "sku" => "IPOD2008BLACK", "weight" => 1.25, "weight_unit" => "lb", "inventory_item_id" => 457924702, "inventory_quantity" => 40, "old_inventory_quantity" => 40, "presentment_prices" => [{"price" => {"amount" => "199.00", "currency_code" => "USD"}, "compare_at_price" => nil}], "admin_graphql_api_id" => "gid://shopify/ProductVariant/457924702", "image_id" => nil}], "options" => [{"id" => 594680422, "product_id" => 632910392, "name" => "Color", "position" => 1, "values" => ["Pink", "Red", "Green", "Black"]}], "images" => [{"id" => 850703190, "alt" => nil, "position" => 1, "product_id" => 632910392, "created_at" => "2025-07-02T11:29:59-05:00", "updated_at" => "2025-07-02T11:29:59-05:00", "admin_graphql_api_id" => "gid://shopify/MediaImage/498048120", "width" => 123, "height" => 456, "src" => "https://cdn.shopify.com/s/files/1/0005/4838/0009/products/ipod-nano.png?v=1735835399", "variant_ids" => []}, {"id" => 562641783, "alt" => nil, "position" => 2, "product_id" => 632910392, "created_at" => "2025-07-02T11:29:59-05:00", "updated_at" => "2025-07-02T11:29:59-05:00", "admin_graphql_api_id" => "gid://shopify/MediaImage/1071517486", "width" => 123, "height" => 456, "src" => "https://cdn.shopify.com/s/files/1/0005/4838/0009/products/ipod-nano-2.png?v=1735835399", "variant_ids" => [808950810]}, {"id" => 378407906, "alt" => nil, "position" => 3, "product_id" => 632910392, "created_at" => "2025-07-02T11:29:59-05:00", "updated_at" => "2025-07-02T11:29:59-05:00", "admin_graphql_api_id" => "gid://shopify/MediaImage/220090436", "width" => 123, "height" => 456, "src" => "https://cdn.shopify.com/s/files/1/0005/4838/0009/products/ipod-nano.png?v=1735835399", "variant_ids" => []}], "image" => {"id" => 850703190, "alt" => nil, "position" => 1, "product_id" => 632910392, "created_at" => "2025-07-02T11:29:59-05:00", "updated_at" => "2025-07-02T11:29:59-05:00", "admin_graphql_api_id" => "gid://shopify/MediaImage/498048120", "width" => 123, "height" => 456, "src" => "https://cdn.shopify.com/s/files/1/0005/4838/0009/products/ipod-nano.png?v=1735835399", "variant_ids" => []}}, {"id" => 921728736, "title" => "IPod Touch 8GB", "body_html" => "<p>The iPod Touch has the iPhone's multi-touch interface, with a physical home button off the touch screen. The home screen has a list of buttons for the available applications.</p>", "vendor" => "Apple", "product_type" => "Cult Products", "created_at" => "2025-07-02T11:29:59-05:00", "handle" => "ipod-touch", "updated_at" => "2025-07-02T11:29:59-05:00", "published_at" => "2008-09-25T20:00:00-04:00", "template_suffix" => nil, "published_scope" => "web", "tags" => "", "status" => "active", "admin_graphql_api_id" => "gid://shopify/Product/921728736", "variants" => [{"id" => 447654529, "product_id" => 921728736, "title" => "Black", "price" => "199.00", "position" => 1, "inventory_policy" => "continue", "compare_at_price" => nil, "option1" => "Black", "option2" => nil, "option3" => nil, "created_at" => "2025-07-02T11:29:59-05:00", "updated_at" => "2025-07-02T11:29:59-05:00", "taxable" => true, "barcode" => "1234_black", "fulfillment_service" => "manual", "grams" => 567, "inventory_management" => "shopify", "requires_shipping" => true, "sku" => "IPOD2009BLACK", "weight" => 1.25, "weight_unit" => "lb", "inventory_item_id" => 447654529, "inventory_quantity" => 13, "old_inventory_quantity" => 13, "presentment_prices" => [{"price" => {"amount" => "199.00", "currency_code" => "USD"}, "compare_at_price" => nil}], "admin_graphql_api_id" => "gid://shopify/ProductVariant/447654529", "image_id" => nil}], "options" => [{"id" => 891236591, "product_id" => 921728736, "name" => "Title", "position" => 1, "values" => ["Black"]}], "images" => [], "image" => nil}]}), headers: {})

    response = ShopifyAPI::Product.all(
      presentment_currencies: "USD",
    )

    assert_requested(:get, "https://test-shop.myshopify.io/admin/api/2025-07/products.json?presentment_currencies=USD")

    response = response.first if response.respond_to?(:first)

    # Assert attributes are correctly typed preventing Sorbet errors downstream
    if response.respond_to?(:original_state)
      response&.original_state&.each do |key, value|
        begin
          response.send(key)
        rescue TypeError => error
          fail TypeError.new("#{self.class}##{key} is mistyped: #{error.message}")
        end
        response.send(key)
      end
    end
  end

  sig do
    void
  end
  def test_6()
    stub_request(:get, "https://test-shop.myshopify.io/admin/api/2025-07/products.json?fields=id%2Cimages%2Ctitle")
      .with(
        headers: {"X-Shopify-Access-Token"=>"this_is_a_test_token", "Accept"=>"application/json"},
        body: {}
      )
      .to_return(status: 200, body: JSON.generate({"products" => [{"id" => 632910392, "title" => "IPod Nano - 8GB", "images" => [{"id" => 850703190, "alt" => nil, "position" => 1, "product_id" => 632910392, "created_at" => "2025-07-02T11:29:59-05:00", "updated_at" => "2025-07-02T11:29:59-05:00", "admin_graphql_api_id" => "gid://shopify/MediaImage/498048120", "width" => 123, "height" => 456, "src" => "https://cdn.shopify.com/s/files/1/0005/4838/0009/products/ipod-nano.png?v=1735835399", "variant_ids" => []}, {"id" => 562641783, "alt" => nil, "position" => 2, "product_id" => 632910392, "created_at" => "2025-07-02T11:29:59-05:00", "updated_at" => "2025-07-02T11:29:59-05:00", "admin_graphql_api_id" => "gid://shopify/MediaImage/1071517486", "width" => 123, "height" => 456, "src" => "https://cdn.shopify.com/s/files/1/0005/4838/0009/products/ipod-nano-2.png?v=1735835399", "variant_ids" => [808950810]}, {"id" => 378407906, "alt" => nil, "position" => 3, "product_id" => 632910392, "created_at" => "2025-07-02T11:29:59-05:00", "updated_at" => "2025-07-02T11:29:59-05:00", "admin_graphql_api_id" => "gid://shopify/MediaImage/220090436", "width" => 123, "height" => 456, "src" => "https://cdn.shopify.com/s/files/1/0005/4838/0009/products/ipod-nano.png?v=1735835399", "variant_ids" => []}]}, {"id" => 921728736, "title" => "IPod Touch 8GB", "images" => []}]}), headers: {})

    response = ShopifyAPI::Product.all(
      fields: "id,images,title",
    )

    assert_requested(:get, "https://test-shop.myshopify.io/admin/api/2025-07/products.json?fields=id%2Cimages%2Ctitle")

    response = response.first if response.respond_to?(:first)

    # Assert attributes are correctly typed preventing Sorbet errors downstream
    if response.respond_to?(:original_state)
      response&.original_state&.each do |key, value|
        begin
          response.send(key)
        rescue TypeError => error
          fail TypeError.new("#{self.class}##{key} is mistyped: #{error.message}")
        end
        response.send(key)
      end
    end
  end

  sig do
    void
  end
  def test_7()
    stub_request(:get, "https://test-shop.myshopify.io/admin/api/2025-07/products/count.json")
      .with(
        headers: {"X-Shopify-Access-Token"=>"this_is_a_test_token", "Accept"=>"application/json"},
        body: {}
      )
      .to_return(status: 200, body: JSON.generate({"count" => 2}), headers: {})

    response = ShopifyAPI::Product.count

    assert_requested(:get, "https://test-shop.myshopify.io/admin/api/2025-07/products/count.json")

    response = response.first if response.respond_to?(:first)

    # Assert attributes are correctly typed preventing Sorbet errors downstream
    if response.respond_to?(:original_state)
      response&.original_state&.each do |key, value|
        begin
          response.send(key)
        rescue TypeError => error
          fail TypeError.new("#{self.class}##{key} is mistyped: #{error.message}")
        end
        response.send(key)
      end
    end
  end

  sig do
    void
  end
  def test_8()
    stub_request(:get, "https://test-shop.myshopify.io/admin/api/2025-07/products/count.json?collection_id=841564295")
      .with(
        headers: {"X-Shopify-Access-Token"=>"this_is_a_test_token", "Accept"=>"application/json"},
        body: {}
      )
      .to_return(status: 200, body: JSON.generate({"count" => 1}), headers: {})

    response = ShopifyAPI::Product.count(
      collection_id: "841564295",
    )

    assert_requested(:get, "https://test-shop.myshopify.io/admin/api/2025-07/products/count.json?collection_id=841564295")

    response = response.first if response.respond_to?(:first)

    # Assert attributes are correctly typed preventing Sorbet errors downstream
    if response.respond_to?(:original_state)
      response&.original_state&.each do |key, value|
        begin
          response.send(key)
        rescue TypeError => error
          fail TypeError.new("#{self.class}##{key} is mistyped: #{error.message}")
        end
        response.send(key)
      end
    end
  end

  sig do
    void
  end
  def test_9()
    stub_request(:get, "https://test-shop.myshopify.io/admin/api/2025-07/products/632910392.json")
      .with(
        headers: {"X-Shopify-Access-Token"=>"this_is_a_test_token", "Accept"=>"application/json"},
        body: {}
      )
      .to_return(status: 200, body: JSON.generate({"product" => {"id" => 632910392, "title" => "IPod Nano - 8GB", "body_html" => "<p>It's the small iPod with one very big idea: Video. Now the world's most popular music player, available in 4GB and 8GB models, lets you enjoy TV shows, movies, video podcasts, and more. The larger, brighter display means amazing picture quality. In six eye-catching colors, iPod nano is stunning all around. And with models starting at just $149, little speaks volumes.</p>", "vendor" => "Apple", "product_type" => "Cult Products", "created_at" => "2025-07-02T11:29:59-05:00", "handle" => "ipod-nano", "updated_at" => "2025-07-02T11:29:59-05:00", "published_at" => "2007-12-31T19:00:00-05:00", "template_suffix" => nil, "published_scope" => "web", "tags" => "Emotive, Flash Memory, MP3, Music", "status" => "active", "admin_graphql_api_id" => "gid://shopify/Product/632910392", "variants" => [{"id" => 808950810, "product_id" => 632910392, "title" => "Pink", "price" => "199.00", "position" => 1, "inventory_policy" => "continue", "compare_at_price" => nil, "option1" => "Pink", "option2" => nil, "option3" => nil, "created_at" => "2025-07-02T11:29:59-05:00", "updated_at" => "2025-07-02T11:29:59-05:00", "taxable" => true, "barcode" => "1234_pink", "fulfillment_service" => "manual", "grams" => 567, "inventory_management" => "shopify", "requires_shipping" => true, "sku" => "IPOD2008PINK", "weight" => 1.25, "weight_unit" => "lb", "inventory_item_id" => 808950810, "inventory_quantity" => 10, "old_inventory_quantity" => 10, "presentment_prices" => [{"price" => {"amount" => "199.00", "currency_code" => "USD"}, "compare_at_price" => nil}], "admin_graphql_api_id" => "gid://shopify/ProductVariant/808950810", "image_id" => 562641783}, {"id" => 49148385, "product_id" => 632910392, "title" => "Red", "price" => "199.00", "position" => 2, "inventory_policy" => "continue", "compare_at_price" => nil, "option1" => "Red", "option2" => nil, "option3" => nil, "created_at" => "2025-07-02T11:29:59-05:00", "updated_at" => "2025-07-02T11:29:59-05:00", "taxable" => true, "barcode" => "1234_red", "fulfillment_service" => "manual", "grams" => 567, "inventory_management" => "shopify", "requires_shipping" => true, "sku" => "IPOD2008RED", "weight" => 1.25, "weight_unit" => "lb", "inventory_item_id" => 49148385, "inventory_quantity" => 20, "old_inventory_quantity" => 20, "presentment_prices" => [{"price" => {"amount" => "199.00", "currency_code" => "USD"}, "compare_at_price" => nil}], "admin_graphql_api_id" => "gid://shopify/ProductVariant/49148385", "image_id" => nil}, {"id" => 39072856, "product_id" => 632910392, "title" => "Green", "price" => "199.00", "position" => 3, "inventory_policy" => "continue", "compare_at_price" => nil, "option1" => "Green", "option2" => nil, "option3" => nil, "created_at" => "2025-07-02T11:29:59-05:00", "updated_at" => "2025-07-02T11:29:59-05:00", "taxable" => true, "barcode" => "1234_green", "fulfillment_service" => "manual", "grams" => 567, "inventory_management" => "shopify", "requires_shipping" => true, "sku" => "IPOD2008GREEN", "weight" => 1.25, "weight_unit" => "lb", "inventory_item_id" => 39072856, "inventory_quantity" => 30, "old_inventory_quantity" => 30, "presentment_prices" => [{"price" => {"amount" => "199.00", "currency_code" => "USD"}, "compare_at_price" => nil}], "admin_graphql_api_id" => "gid://shopify/ProductVariant/39072856", "image_id" => nil}, {"id" => 457924702, "product_id" => 632910392, "title" => "Black", "price" => "199.00", "position" => 4, "inventory_policy" => "continue", "compare_at_price" => nil, "option1" => "Black", "option2" => nil, "option3" => nil, "created_at" => "2025-07-02T11:29:59-05:00", "updated_at" => "2025-07-02T11:29:59-05:00", "taxable" => true, "barcode" => "1234_black", "fulfillment_service" => "manual", "grams" => 567, "inventory_management" => "shopify", "requires_shipping" => true, "sku" => "IPOD2008BLACK", "weight" => 1.25, "weight_unit" => "lb", "inventory_item_id" => 457924702, "inventory_quantity" => 40, "old_inventory_quantity" => 40, "presentment_prices" => [{"price" => {"amount" => "199.00", "currency_code" => "USD"}, "compare_at_price" => nil}], "admin_graphql_api_id" => "gid://shopify/ProductVariant/457924702", "image_id" => nil}], "options" => [{"id" => 594680422, "product_id" => 632910392, "name" => "Color", "position" => 1, "values" => ["Pink", "Red", "Green", "Black"]}], "images" => [{"id" => 850703190, "alt" => nil, "position" => 1, "product_id" => 632910392, "created_at" => "2025-07-02T11:29:59-05:00", "updated_at" => "2025-07-02T11:29:59-05:00", "admin_graphql_api_id" => "gid://shopify/MediaImage/498048120", "width" => 123, "height" => 456, "src" => "https://cdn.shopify.com/s/files/1/0005/4838/0009/products/ipod-nano.png?v=1735835399", "variant_ids" => []}, {"id" => 562641783, "alt" => nil, "position" => 2, "product_id" => 632910392, "created_at" => "2025-07-02T11:29:59-05:00", "updated_at" => "2025-07-02T11:29:59-05:00", "admin_graphql_api_id" => "gid://shopify/MediaImage/1071517486", "width" => 123, "height" => 456, "src" => "https://cdn.shopify.com/s/files/1/0005/4838/0009/products/ipod-nano-2.png?v=1735835399", "variant_ids" => [808950810]}, {"id" => 378407906, "alt" => nil, "position" => 3, "product_id" => 632910392, "created_at" => "2025-07-02T11:29:59-05:00", "updated_at" => "2025-07-02T11:29:59-05:00", "admin_graphql_api_id" => "gid://shopify/MediaImage/220090436", "width" => 123, "height" => 456, "src" => "https://cdn.shopify.com/s/files/1/0005/4838/0009/products/ipod-nano.png?v=1735835399", "variant_ids" => []}], "image" => {"id" => 850703190, "alt" => nil, "position" => 1, "product_id" => 632910392, "created_at" => "2025-07-02T11:29:59-05:00", "updated_at" => "2025-07-02T11:29:59-05:00", "admin_graphql_api_id" => "gid://shopify/MediaImage/498048120", "width" => 123, "height" => 456, "src" => "https://cdn.shopify.com/s/files/1/0005/4838/0009/products/ipod-nano.png?v=1735835399", "variant_ids" => []}}}), headers: {})

    response = ShopifyAPI::Product.find(
      id: 632910392,
    )

    assert_requested(:get, "https://test-shop.myshopify.io/admin/api/2025-07/products/632910392.json")

    response = response.first if response.respond_to?(:first)

    # Assert attributes are correctly typed preventing Sorbet errors downstream
    if response.respond_to?(:original_state)
      response&.original_state&.each do |key, value|
        begin
          response.send(key)
        rescue TypeError => error
          fail TypeError.new("#{self.class}##{key} is mistyped: #{error.message}")
        end
        response.send(key)
      end
    end
  end

  sig do
    void
  end
  def test_10()
    stub_request(:get, "https://test-shop.myshopify.io/admin/api/2025-07/products/632910392.json?fields=id%2Cimages%2Ctitle")
      .with(
        headers: {"X-Shopify-Access-Token"=>"this_is_a_test_token", "Accept"=>"application/json"},
        body: {}
      )
      .to_return(status: 200, body: JSON.generate({"product" => {"id" => 632910392, "title" => "IPod Nano - 8GB", "images" => [{"id" => 850703190, "alt" => nil, "position" => 1, "product_id" => 632910392, "created_at" => "2025-07-02T11:29:59-05:00", "updated_at" => "2025-07-02T11:29:59-05:00", "admin_graphql_api_id" => "gid://shopify/MediaImage/498048120", "width" => 123, "height" => 456, "src" => "https://cdn.shopify.com/s/files/1/0005/4838/0009/products/ipod-nano.png?v=1735835399", "variant_ids" => []}, {"id" => 562641783, "alt" => nil, "position" => 2, "product_id" => 632910392, "created_at" => "2025-07-02T11:29:59-05:00", "updated_at" => "2025-07-02T11:29:59-05:00", "admin_graphql_api_id" => "gid://shopify/MediaImage/1071517486", "width" => 123, "height" => 456, "src" => "https://cdn.shopify.com/s/files/1/0005/4838/0009/products/ipod-nano-2.png?v=1735835399", "variant_ids" => [808950810]}, {"id" => 378407906, "alt" => nil, "position" => 3, "product_id" => 632910392, "created_at" => "2025-07-02T11:29:59-05:00", "updated_at" => "2025-07-02T11:29:59-05:00", "admin_graphql_api_id" => "gid://shopify/MediaImage/220090436", "width" => 123, "height" => 456, "src" => "https://cdn.shopify.com/s/files/1/0005/4838/0009/products/ipod-nano.png?v=1735835399", "variant_ids" => []}]}}), headers: {})

    response = ShopifyAPI::Product.find(
      id: 632910392,
      fields: "id,images,title",
    )

    assert_requested(:get, "https://test-shop.myshopify.io/admin/api/2025-07/products/632910392.json?fields=id%2Cimages%2Ctitle")

    response = response.first if response.respond_to?(:first)

    # Assert attributes are correctly typed preventing Sorbet errors downstream
    if response.respond_to?(:original_state)
      response&.original_state&.each do |key, value|
        begin
          response.send(key)
        rescue TypeError => error
          fail TypeError.new("#{self.class}##{key} is mistyped: #{error.message}")
        end
        response.send(key)
      end
    end
  end

  sig do
    void
  end
  def test_11()
    stub_request(:put, "https://test-shop.myshopify.io/admin/api/2025-07/products/632910392.json")
      .with(
        headers: {"X-Shopify-Access-Token"=>"this_is_a_test_token", "Accept"=>"application/json", "Content-Type"=>"application/json"},
        body: { "product" => hash_including({"metafields" => [{"key" => "new", "value" => "newvalue", "type" => "single_line_text_field", "namespace" => "global"}]}) }
      )
      .to_return(status: 200, body: JSON.generate({"product" => {"id" => 632910392, "title" => "IPod Nano - 8GB", "body_html" => "<p>It's the small iPod with one very big idea: Video. Now the world's most popular music player, available in 4GB and 8GB models, lets you enjoy TV shows, movies, video podcasts, and more. The larger, brighter display means amazing picture quality. In six eye-catching colors, iPod nano is stunning all around. And with models starting at just $149, little speaks volumes.</p>", "vendor" => "Apple", "product_type" => "Cult Products", "created_at" => "2025-07-02T11:29:59-05:00", "handle" => "ipod-nano", "updated_at" => "2025-07-02T11:35:57-05:00", "published_at" => "2007-12-31T19:00:00-05:00", "template_suffix" => nil, "published_scope" => "web", "tags" => "Emotive, Flash Memory, MP3, Music", "status" => "active", "admin_graphql_api_id" => "gid://shopify/Product/632910392", "variants" => [{"id" => 808950810, "product_id" => 632910392, "title" => "Pink", "price" => "199.00", "position" => 1, "inventory_policy" => "continue", "compare_at_price" => nil, "option1" => "Pink", "option2" => nil, "option3" => nil, "created_at" => "2025-07-02T11:29:59-05:00", "updated_at" => "2025-07-02T11:29:59-05:00", "taxable" => true, "barcode" => "1234_pink", "fulfillment_service" => "manual", "grams" => 567, "inventory_management" => "shopify", "requires_shipping" => true, "sku" => "IPOD2008PINK", "weight" => 1.25, "weight_unit" => "lb", "inventory_item_id" => 808950810, "inventory_quantity" => 10, "old_inventory_quantity" => 10, "presentment_prices" => [{"price" => {"amount" => "199.00", "currency_code" => "USD"}, "compare_at_price" => nil}], "admin_graphql_api_id" => "gid://shopify/ProductVariant/808950810", "image_id" => 562641783}, {"id" => 49148385, "product_id" => 632910392, "title" => "Red", "price" => "199.00", "position" => 2, "inventory_policy" => "continue", "compare_at_price" => nil, "option1" => "Red", "option2" => nil, "option3" => nil, "created_at" => "2025-07-02T11:29:59-05:00", "updated_at" => "2025-07-02T11:29:59-05:00", "taxable" => true, "barcode" => "1234_red", "fulfillment_service" => "manual", "grams" => 567, "inventory_management" => "shopify", "requires_shipping" => true, "sku" => "IPOD2008RED", "weight" => 1.25, "weight_unit" => "lb", "inventory_item_id" => 49148385, "inventory_quantity" => 20, "old_inventory_quantity" => 20, "presentment_prices" => [{"price" => {"amount" => "199.00", "currency_code" => "USD"}, "compare_at_price" => nil}], "admin_graphql_api_id" => "gid://shopify/ProductVariant/49148385", "image_id" => nil}, {"id" => 39072856, "product_id" => 632910392, "title" => "Green", "price" => "199.00", "position" => 3, "inventory_policy" => "continue", "compare_at_price" => nil, "option1" => "Green", "option2" => nil, "option3" => nil, "created_at" => "2025-07-02T11:29:59-05:00", "updated_at" => "2025-07-02T11:29:59-05:00", "taxable" => true, "barcode" => "1234_green", "fulfillment_service" => "manual", "grams" => 567, "inventory_management" => "shopify", "requires_shipping" => true, "sku" => "IPOD2008GREEN", "weight" => 1.25, "weight_unit" => "lb", "inventory_item_id" => 39072856, "inventory_quantity" => 30, "old_inventory_quantity" => 30, "presentment_prices" => [{"price" => {"amount" => "199.00", "currency_code" => "USD"}, "compare_at_price" => nil}], "admin_graphql_api_id" => "gid://shopify/ProductVariant/39072856", "image_id" => nil}, {"id" => 457924702, "product_id" => 632910392, "title" => "Black", "price" => "199.00", "position" => 4, "inventory_policy" => "continue", "compare_at_price" => nil, "option1" => "Black", "option2" => nil, "option3" => nil, "created_at" => "2025-07-02T11:29:59-05:00", "updated_at" => "2025-07-02T11:29:59-05:00", "taxable" => true, "barcode" => "1234_black", "fulfillment_service" => "manual", "grams" => 567, "inventory_management" => "shopify", "requires_shipping" => true, "sku" => "IPOD2008BLACK", "weight" => 1.25, "weight_unit" => "lb", "inventory_item_id" => 457924702, "inventory_quantity" => 40, "old_inventory_quantity" => 40, "presentment_prices" => [{"price" => {"amount" => "199.00", "currency_code" => "USD"}, "compare_at_price" => nil}], "admin_graphql_api_id" => "gid://shopify/ProductVariant/457924702", "image_id" => nil}], "options" => [{"id" => 594680422, "product_id" => 632910392, "name" => "Color", "position" => 1, "values" => ["Pink", "Red", "Green", "Black"]}], "images" => [{"id" => 850703190, "alt" => nil, "position" => 1, "product_id" => 632910392, "created_at" => "2025-07-02T11:29:59-05:00", "updated_at" => "2025-07-02T11:29:59-05:00", "admin_graphql_api_id" => "gid://shopify/MediaImage/498048120", "width" => 123, "height" => 456, "src" => "https://cdn.shopify.com/s/files/1/0005/4838/0009/products/ipod-nano.png?v=1735835399", "variant_ids" => []}, {"id" => 562641783, "alt" => nil, "position" => 2, "product_id" => 632910392, "created_at" => "2025-07-02T11:29:59-05:00", "updated_at" => "2025-07-02T11:29:59-05:00", "admin_graphql_api_id" => "gid://shopify/MediaImage/1071517486", "width" => 123, "height" => 456, "src" => "https://cdn.shopify.com/s/files/1/0005/4838/0009/products/ipod-nano-2.png?v=1735835399", "variant_ids" => [808950810]}, {"id" => 378407906, "alt" => nil, "position" => 3, "product_id" => 632910392, "created_at" => "2025-07-02T11:29:59-05:00", "updated_at" => "2025-07-02T11:29:59-05:00", "admin_graphql_api_id" => "gid://shopify/MediaImage/220090436", "width" => 123, "height" => 456, "src" => "https://cdn.shopify.com/s/files/1/0005/4838/0009/products/ipod-nano.png?v=1735835399", "variant_ids" => []}], "image" => {"id" => 850703190, "alt" => nil, "position" => 1, "product_id" => 632910392, "created_at" => "2025-07-02T11:29:59-05:00", "updated_at" => "2025-07-02T11:29:59-05:00", "admin_graphql_api_id" => "gid://shopify/MediaImage/498048120", "width" => 123, "height" => 456, "src" => "https://cdn.shopify.com/s/files/1/0005/4838/0009/products/ipod-nano.png?v=1735835399", "variant_ids" => []}}}), headers: {})

    response = product = ShopifyAPI::Product.new
    product.id = 632910392
    product.metafields = [
      {
        "key" => "new",
        "value" => "newvalue",
        "type" => "single_line_text_field",
        "namespace" => "global"
      }
    ]
    product.save

    assert_requested(:put, "https://test-shop.myshopify.io/admin/api/2025-07/products/632910392.json")

    response = response.first if response.respond_to?(:first)

    # Assert attributes are correctly typed preventing Sorbet errors downstream
    if response.respond_to?(:original_state)
      response&.original_state&.each do |key, value|
        begin
          response.send(key)
        rescue TypeError => error
          fail TypeError.new("#{self.class}##{key} is mistyped: #{error.message}")
        end
        response.send(key)
      end
    end
  end

  sig do
    void
  end
  def test_12()
    stub_request(:put, "https://test-shop.myshopify.io/admin/api/2025-07/products/632910392.json")
      .with(
        headers: {"X-Shopify-Access-Token"=>"this_is_a_test_token", "Accept"=>"application/json", "Content-Type"=>"application/json"},
        body: { "product" => hash_including({"published" => false}) }
      )
      .to_return(status: 200, body: JSON.generate({"product" => {"id" => 632910392, "title" => "IPod Nano - 8GB", "body_html" => "<p>It's the small iPod with one very big idea: Video. Now the world's most popular music player, available in 4GB and 8GB models, lets you enjoy TV shows, movies, video podcasts, and more. The larger, brighter display means amazing picture quality. In six eye-catching colors, iPod nano is stunning all around. And with models starting at just $149, little speaks volumes.</p>", "vendor" => "Apple", "product_type" => "Cult Products", "created_at" => "2025-07-02T11:29:59-05:00", "handle" => "ipod-nano", "updated_at" => "2025-07-02T11:36:09-05:00", "published_at" => nil, "template_suffix" => nil, "published_scope" => "web", "tags" => "Emotive, Flash Memory, MP3, Music", "status" => "active", "admin_graphql_api_id" => "gid://shopify/Product/632910392", "variants" => [{"id" => 808950810, "product_id" => 632910392, "title" => "Pink", "price" => "199.00", "position" => 1, "inventory_policy" => "continue", "compare_at_price" => nil, "option1" => "Pink", "option2" => nil, "option3" => nil, "created_at" => "2025-07-02T11:29:59-05:00", "updated_at" => "2025-07-02T11:29:59-05:00", "taxable" => true, "barcode" => "1234_pink", "fulfillment_service" => "manual", "grams" => 567, "inventory_management" => "shopify", "requires_shipping" => true, "sku" => "IPOD2008PINK", "weight" => 1.25, "weight_unit" => "lb", "inventory_item_id" => 808950810, "inventory_quantity" => 10, "old_inventory_quantity" => 10, "presentment_prices" => [{"price" => {"amount" => "199.00", "currency_code" => "USD"}, "compare_at_price" => nil}], "admin_graphql_api_id" => "gid://shopify/ProductVariant/808950810", "image_id" => 562641783}, {"id" => 49148385, "product_id" => 632910392, "title" => "Red", "price" => "199.00", "position" => 2, "inventory_policy" => "continue", "compare_at_price" => nil, "option1" => "Red", "option2" => nil, "option3" => nil, "created_at" => "2025-07-02T11:29:59-05:00", "updated_at" => "2025-07-02T11:29:59-05:00", "taxable" => true, "barcode" => "1234_red", "fulfillment_service" => "manual", "grams" => 567, "inventory_management" => "shopify", "requires_shipping" => true, "sku" => "IPOD2008RED", "weight" => 1.25, "weight_unit" => "lb", "inventory_item_id" => 49148385, "inventory_quantity" => 20, "old_inventory_quantity" => 20, "presentment_prices" => [{"price" => {"amount" => "199.00", "currency_code" => "USD"}, "compare_at_price" => nil}], "admin_graphql_api_id" => "gid://shopify/ProductVariant/49148385", "image_id" => nil}, {"id" => 39072856, "product_id" => 632910392, "title" => "Green", "price" => "199.00", "position" => 3, "inventory_policy" => "continue", "compare_at_price" => nil, "option1" => "Green", "option2" => nil, "option3" => nil, "created_at" => "2025-07-02T11:29:59-05:00", "updated_at" => "2025-07-02T11:29:59-05:00", "taxable" => true, "barcode" => "1234_green", "fulfillment_service" => "manual", "grams" => 567, "inventory_management" => "shopify", "requires_shipping" => true, "sku" => "IPOD2008GREEN", "weight" => 1.25, "weight_unit" => "lb", "inventory_item_id" => 39072856, "inventory_quantity" => 30, "old_inventory_quantity" => 30, "presentment_prices" => [{"price" => {"amount" => "199.00", "currency_code" => "USD"}, "compare_at_price" => nil}], "admin_graphql_api_id" => "gid://shopify/ProductVariant/39072856", "image_id" => nil}, {"id" => 457924702, "product_id" => 632910392, "title" => "Black", "price" => "199.00", "position" => 4, "inventory_policy" => "continue", "compare_at_price" => nil, "option1" => "Black", "option2" => nil, "option3" => nil, "created_at" => "2025-07-02T11:29:59-05:00", "updated_at" => "2025-07-02T11:29:59-05:00", "taxable" => true, "barcode" => "1234_black", "fulfillment_service" => "manual", "grams" => 567, "inventory_management" => "shopify", "requires_shipping" => true, "sku" => "IPOD2008BLACK", "weight" => 1.25, "weight_unit" => "lb", "inventory_item_id" => 457924702, "inventory_quantity" => 40, "old_inventory_quantity" => 40, "presentment_prices" => [{"price" => {"amount" => "199.00", "currency_code" => "USD"}, "compare_at_price" => nil}], "admin_graphql_api_id" => "gid://shopify/ProductVariant/457924702", "image_id" => nil}], "options" => [{"id" => 594680422, "product_id" => 632910392, "name" => "Color", "position" => 1, "values" => ["Pink", "Red", "Green", "Black"]}], "images" => [{"id" => 850703190, "alt" => nil, "position" => 1, "product_id" => 632910392, "created_at" => "2025-07-02T11:29:59-05:00", "updated_at" => "2025-07-02T11:29:59-05:00", "admin_graphql_api_id" => "gid://shopify/MediaImage/498048120", "width" => 123, "height" => 456, "src" => "https://cdn.shopify.com/s/files/1/0005/4838/0009/products/ipod-nano.png?v=1735835399", "variant_ids" => []}, {"id" => 562641783, "alt" => nil, "position" => 2, "product_id" => 632910392, "created_at" => "2025-07-02T11:29:59-05:00", "updated_at" => "2025-07-02T11:29:59-05:00", "admin_graphql_api_id" => "gid://shopify/MediaImage/1071517486", "width" => 123, "height" => 456, "src" => "https://cdn.shopify.com/s/files/1/0005/4838/0009/products/ipod-nano-2.png?v=1735835399", "variant_ids" => [808950810]}, {"id" => 378407906, "alt" => nil, "position" => 3, "product_id" => 632910392, "created_at" => "2025-07-02T11:29:59-05:00", "updated_at" => "2025-07-02T11:29:59-05:00", "admin_graphql_api_id" => "gid://shopify/MediaImage/220090436", "width" => 123, "height" => 456, "src" => "https://cdn.shopify.com/s/files/1/0005/4838/0009/products/ipod-nano.png?v=1735835399", "variant_ids" => []}], "image" => {"id" => 850703190, "alt" => nil, "position" => 1, "product_id" => 632910392, "created_at" => "2025-07-02T11:29:59-05:00", "updated_at" => "2025-07-02T11:29:59-05:00", "admin_graphql_api_id" => "gid://shopify/MediaImage/498048120", "width" => 123, "height" => 456, "src" => "https://cdn.shopify.com/s/files/1/0005/4838/0009/products/ipod-nano.png?v=1735835399", "variant_ids" => []}}}), headers: {})

    response = product = ShopifyAPI::Product.new
    product.id = 632910392
    product.published = false
    product.save

    assert_requested(:put, "https://test-shop.myshopify.io/admin/api/2025-07/products/632910392.json")

    response = response.first if response.respond_to?(:first)

    # Assert attributes are correctly typed preventing Sorbet errors downstream
    if response.respond_to?(:original_state)
      response&.original_state&.each do |key, value|
        begin
          response.send(key)
        rescue TypeError => error
          fail TypeError.new("#{self.class}##{key} is mistyped: #{error.message}")
        end
        response.send(key)
      end
    end
  end

  sig do
    void
  end
  def test_13()
    stub_request(:put, "https://test-shop.myshopify.io/admin/api/2025-07/products/632910392.json")
      .with(
        headers: {"X-Shopify-Access-Token"=>"this_is_a_test_token", "Accept"=>"application/json", "Content-Type"=>"application/json"},
        body: { "product" => hash_including({"published" => true}) }
      )
      .to_return(status: 200, body: JSON.generate({"product" => {"id" => 632910392, "title" => "IPod Nano - 8GB", "body_html" => "<p>It's the small iPod with one very big idea: Video. Now the world's most popular music player, available in 4GB and 8GB models, lets you enjoy TV shows, movies, video podcasts, and more. The larger, brighter display means amazing picture quality. In six eye-catching colors, iPod nano is stunning all around. And with models starting at just $149, little speaks volumes.</p>", "vendor" => "Apple", "product_type" => "Cult Products", "created_at" => "2025-07-02T11:29:59-05:00", "handle" => "ipod-nano", "updated_at" => "2025-07-02T11:36:41-05:00", "published_at" => "2025-07-02T11:36:41-05:00", "template_suffix" => nil, "published_scope" => "web", "tags" => "Emotive, Flash Memory, MP3, Music", "status" => "active", "admin_graphql_api_id" => "gid://shopify/Product/632910392", "variants" => [{"id" => 808950810, "product_id" => 632910392, "title" => "Pink", "price" => "199.00", "position" => 1, "inventory_policy" => "continue", "compare_at_price" => nil, "option1" => "Pink", "option2" => nil, "option3" => nil, "created_at" => "2025-07-02T11:29:59-05:00", "updated_at" => "2025-07-02T11:29:59-05:00", "taxable" => true, "barcode" => "1234_pink", "fulfillment_service" => "manual", "grams" => 567, "inventory_management" => "shopify", "requires_shipping" => true, "sku" => "IPOD2008PINK", "weight" => 1.25, "weight_unit" => "lb", "inventory_item_id" => 808950810, "inventory_quantity" => 10, "old_inventory_quantity" => 10, "presentment_prices" => [{"price" => {"amount" => "199.00", "currency_code" => "USD"}, "compare_at_price" => nil}], "admin_graphql_api_id" => "gid://shopify/ProductVariant/808950810", "image_id" => 562641783}, {"id" => 49148385, "product_id" => 632910392, "title" => "Red", "price" => "199.00", "position" => 2, "inventory_policy" => "continue", "compare_at_price" => nil, "option1" => "Red", "option2" => nil, "option3" => nil, "created_at" => "2025-07-02T11:29:59-05:00", "updated_at" => "2025-07-02T11:29:59-05:00", "taxable" => true, "barcode" => "1234_red", "fulfillment_service" => "manual", "grams" => 567, "inventory_management" => "shopify", "requires_shipping" => true, "sku" => "IPOD2008RED", "weight" => 1.25, "weight_unit" => "lb", "inventory_item_id" => 49148385, "inventory_quantity" => 20, "old_inventory_quantity" => 20, "presentment_prices" => [{"price" => {"amount" => "199.00", "currency_code" => "USD"}, "compare_at_price" => nil}], "admin_graphql_api_id" => "gid://shopify/ProductVariant/49148385", "image_id" => nil}, {"id" => 39072856, "product_id" => 632910392, "title" => "Green", "price" => "199.00", "position" => 3, "inventory_policy" => "continue", "compare_at_price" => nil, "option1" => "Green", "option2" => nil, "option3" => nil, "created_at" => "2025-07-02T11:29:59-05:00", "updated_at" => "2025-07-02T11:29:59-05:00", "taxable" => true, "barcode" => "1234_green", "fulfillment_service" => "manual", "grams" => 567, "inventory_management" => "shopify", "requires_shipping" => true, "sku" => "IPOD2008GREEN", "weight" => 1.25, "weight_unit" => "lb", "inventory_item_id" => 39072856, "inventory_quantity" => 30, "old_inventory_quantity" => 30, "presentment_prices" => [{"price" => {"amount" => "199.00", "currency_code" => "USD"}, "compare_at_price" => nil}], "admin_graphql_api_id" => "gid://shopify/ProductVariant/39072856", "image_id" => nil}, {"id" => 457924702, "product_id" => 632910392, "title" => "Black", "price" => "199.00", "position" => 4, "inventory_policy" => "continue", "compare_at_price" => nil, "option1" => "Black", "option2" => nil, "option3" => nil, "created_at" => "2025-07-02T11:29:59-05:00", "updated_at" => "2025-07-02T11:29:59-05:00", "taxable" => true, "barcode" => "1234_black", "fulfillment_service" => "manual", "grams" => 567, "inventory_management" => "shopify", "requires_shipping" => true, "sku" => "IPOD2008BLACK", "weight" => 1.25, "weight_unit" => "lb", "inventory_item_id" => 457924702, "inventory_quantity" => 40, "old_inventory_quantity" => 40, "presentment_prices" => [{"price" => {"amount" => "199.00", "currency_code" => "USD"}, "compare_at_price" => nil}], "admin_graphql_api_id" => "gid://shopify/ProductVariant/457924702", "image_id" => nil}], "options" => [{"id" => 594680422, "product_id" => 632910392, "name" => "Color", "position" => 1, "values" => ["Pink", "Red", "Green", "Black"]}], "images" => [{"id" => 850703190, "alt" => nil, "position" => 1, "product_id" => 632910392, "created_at" => "2025-07-02T11:29:59-05:00", "updated_at" => "2025-07-02T11:29:59-05:00", "admin_graphql_api_id" => "gid://shopify/MediaImage/498048120", "width" => 123, "height" => 456, "src" => "https://cdn.shopify.com/s/files/1/0005/4838/0009/products/ipod-nano.png?v=1735835399", "variant_ids" => []}, {"id" => 562641783, "alt" => nil, "position" => 2, "product_id" => 632910392, "created_at" => "2025-07-02T11:29:59-05:00", "updated_at" => "2025-07-02T11:29:59-05:00", "admin_graphql_api_id" => "gid://shopify/MediaImage/1071517486", "width" => 123, "height" => 456, "src" => "https://cdn.shopify.com/s/files/1/0005/4838/0009/products/ipod-nano-2.png?v=1735835399", "variant_ids" => [808950810]}, {"id" => 378407906, "alt" => nil, "position" => 3, "product_id" => 632910392, "created_at" => "2025-07-02T11:29:59-05:00", "updated_at" => "2025-07-02T11:29:59-05:00", "admin_graphql_api_id" => "gid://shopify/MediaImage/220090436", "width" => 123, "height" => 456, "src" => "https://cdn.shopify.com/s/files/1/0005/4838/0009/products/ipod-nano.png?v=1735835399", "variant_ids" => []}], "image" => {"id" => 850703190, "alt" => nil, "position" => 1, "product_id" => 632910392, "created_at" => "2025-07-02T11:29:59-05:00", "updated_at" => "2025-07-02T11:29:59-05:00", "admin_graphql_api_id" => "gid://shopify/MediaImage/498048120", "width" => 123, "height" => 456, "src" => "https://cdn.shopify.com/s/files/1/0005/4838/0009/products/ipod-nano.png?v=1735835399", "variant_ids" => []}}}), headers: {})

    response = product = ShopifyAPI::Product.new
    product.id = 632910392
    product.published = true
    product.save

    assert_requested(:put, "https://test-shop.myshopify.io/admin/api/2025-07/products/632910392.json")

    response = response.first if response.respond_to?(:first)

    # Assert attributes are correctly typed preventing Sorbet errors downstream
    if response.respond_to?(:original_state)
      response&.original_state&.each do |key, value|
        begin
          response.send(key)
        rescue TypeError => error
          fail TypeError.new("#{self.class}##{key} is mistyped: #{error.message}")
        end
        response.send(key)
      end
    end
  end

  sig do
    void
  end
  def test_14()
    stub_request(:put, "https://test-shop.myshopify.io/admin/api/2025-07/products/632910392.json")
      .with(
        headers: {"X-Shopify-Access-Token"=>"this_is_a_test_token", "Accept"=>"application/json", "Content-Type"=>"application/json"},
        body: { "product" => hash_including({"title" => "Updated Product Title", "variants" => [{"id" => 808950810, "price" => "2000.00", "sku" => "Updating the Product SKU"}, {"id" => 49148385}, {"id" => 39072856}, {"id" => 457924702}]}) }
      )
      .to_return(status: 200, body: JSON.generate({"product" => {"id" => 632910392, "title" => "Updated Product Title", "body_html" => "<p>It's the small iPod with one very big idea: Video. Now the world's most popular music player, available in 4GB and 8GB models, lets you enjoy TV shows, movies, video podcasts, and more. The larger, brighter display means amazing picture quality. In six eye-catching colors, iPod nano is stunning all around. And with models starting at just $149, little speaks volumes.</p>", "vendor" => "Apple", "product_type" => "Cult Products", "created_at" => "2025-07-02T11:29:59-05:00", "handle" => "ipod-nano", "updated_at" => "2025-07-02T11:36:40-05:00", "published_at" => "2007-12-31T19:00:00-05:00", "template_suffix" => nil, "published_scope" => "web", "tags" => "Emotive, Flash Memory, MP3, Music", "status" => "active", "admin_graphql_api_id" => "gid://shopify/Product/632910392", "variants" => [{"id" => 808950810, "product_id" => 632910392, "title" => "Pink", "price" => "2000.00", "position" => 1, "inventory_policy" => "continue", "compare_at_price" => nil, "option1" => "Pink", "option2" => nil, "option3" => nil, "created_at" => "2025-07-02T11:29:59-05:00", "updated_at" => "2025-07-02T11:36:40-05:00", "taxable" => true, "barcode" => "1234_pink", "fulfillment_service" => "manual", "grams" => 567, "inventory_management" => "shopify", "requires_shipping" => true, "sku" => "Updating the Product SKU", "weight" => 1.25, "weight_unit" => "lb", "inventory_item_id" => 808950810, "inventory_quantity" => 10, "old_inventory_quantity" => 10, "presentment_prices" => [{"price" => {"amount" => "2000.00", "currency_code" => "USD"}, "compare_at_price" => nil}], "admin_graphql_api_id" => "gid://shopify/ProductVariant/808950810", "image_id" => 562641783}, {"id" => 49148385, "product_id" => 632910392, "title" => "Red", "price" => "199.00", "position" => 2, "inventory_policy" => "continue", "compare_at_price" => nil, "option1" => "Red", "option2" => nil, "option3" => nil, "created_at" => "2025-07-02T11:29:59-05:00", "updated_at" => "2025-07-02T11:29:59-05:00", "taxable" => true, "barcode" => "1234_red", "fulfillment_service" => "manual", "grams" => 567, "inventory_management" => "shopify", "requires_shipping" => true, "sku" => "IPOD2008RED", "weight" => 1.25, "weight_unit" => "lb", "inventory_item_id" => 49148385, "inventory_quantity" => 20, "old_inventory_quantity" => 20, "presentment_prices" => [{"price" => {"amount" => "199.00", "currency_code" => "USD"}, "compare_at_price" => nil}], "admin_graphql_api_id" => "gid://shopify/ProductVariant/49148385", "image_id" => nil}, {"id" => 39072856, "product_id" => 632910392, "title" => "Green", "price" => "199.00", "position" => 3, "inventory_policy" => "continue", "compare_at_price" => nil, "option1" => "Green", "option2" => nil, "option3" => nil, "created_at" => "2025-07-02T11:29:59-05:00", "updated_at" => "2025-07-02T11:29:59-05:00", "taxable" => true, "barcode" => "1234_green", "fulfillment_service" => "manual", "grams" => 567, "inventory_management" => "shopify", "requires_shipping" => true, "sku" => "IPOD2008GREEN", "weight" => 1.25, "weight_unit" => "lb", "inventory_item_id" => 39072856, "inventory_quantity" => 30, "old_inventory_quantity" => 30, "presentment_prices" => [{"price" => {"amount" => "199.00", "currency_code" => "USD"}, "compare_at_price" => nil}], "admin_graphql_api_id" => "gid://shopify/ProductVariant/39072856", "image_id" => nil}, {"id" => 457924702, "product_id" => 632910392, "title" => "Black", "price" => "199.00", "position" => 4, "inventory_policy" => "continue", "compare_at_price" => nil, "option1" => "Black", "option2" => nil, "option3" => nil, "created_at" => "2025-07-02T11:29:59-05:00", "updated_at" => "2025-07-02T11:29:59-05:00", "taxable" => true, "barcode" => "1234_black", "fulfillment_service" => "manual", "grams" => 567, "inventory_management" => "shopify", "requires_shipping" => true, "sku" => "IPOD2008BLACK", "weight" => 1.25, "weight_unit" => "lb", "inventory_item_id" => 457924702, "inventory_quantity" => 40, "old_inventory_quantity" => 40, "presentment_prices" => [{"price" => {"amount" => "199.00", "currency_code" => "USD"}, "compare_at_price" => nil}], "admin_graphql_api_id" => "gid://shopify/ProductVariant/457924702", "image_id" => nil}], "options" => [{"id" => 594680422, "product_id" => 632910392, "name" => "Color", "position" => 1, "values" => ["Pink", "Red", "Green", "Black"]}], "images" => [{"id" => 850703190, "alt" => nil, "position" => 1, "product_id" => 632910392, "created_at" => "2025-07-02T11:29:59-05:00", "updated_at" => "2025-07-02T11:29:59-05:00", "admin_graphql_api_id" => "gid://shopify/MediaImage/498048120", "width" => 123, "height" => 456, "src" => "https://cdn.shopify.com/s/files/1/0005/4838/0009/products/ipod-nano.png?v=1735835399", "variant_ids" => []}, {"id" => 562641783, "alt" => nil, "position" => 2, "product_id" => 632910392, "created_at" => "2025-07-02T11:29:59-05:00", "updated_at" => "2025-07-02T11:29:59-05:00", "admin_graphql_api_id" => "gid://shopify/MediaImage/1071517486", "width" => 123, "height" => 456, "src" => "https://cdn.shopify.com/s/files/1/0005/4838/0009/products/ipod-nano-2.png?v=1735835399", "variant_ids" => [808950810]}, {"id" => 378407906, "alt" => nil, "position" => 3, "product_id" => 632910392, "created_at" => "2025-07-02T11:29:59-05:00", "updated_at" => "2025-07-02T11:29:59-05:00", "admin_graphql_api_id" => "gid://shopify/MediaImage/220090436", "width" => 123, "height" => 456, "src" => "https://cdn.shopify.com/s/files/1/0005/4838/0009/products/ipod-nano.png?v=1735835399", "variant_ids" => []}], "image" => {"id" => 850703190, "alt" => nil, "position" => 1, "product_id" => 632910392, "created_at" => "2025-07-02T11:29:59-05:00", "updated_at" => "2025-07-02T11:29:59-05:00", "admin_graphql_api_id" => "gid://shopify/MediaImage/498048120", "width" => 123, "height" => 456, "src" => "https://cdn.shopify.com/s/files/1/0005/4838/0009/products/ipod-nano.png?v=1735835399", "variant_ids" => []}}}), headers: {})

    response = product = ShopifyAPI::Product.new
    product.id = 632910392
    product.title = "Updated Product Title"
    product.variants = [
      {
        "id" => 808950810,
        "price" => "2000.00",
        "sku" => "Updating the Product SKU"
      },
      {
        "id" => 49148385
      },
      {
        "id" => 39072856
      },
      {
        "id" => 457924702
      }
    ]
    product.save

    assert_requested(:put, "https://test-shop.myshopify.io/admin/api/2025-07/products/632910392.json")

    response = response.first if response.respond_to?(:first)

    # Assert attributes are correctly typed preventing Sorbet errors downstream
    if response.respond_to?(:original_state)
      response&.original_state&.each do |key, value|
        begin
          response.send(key)
        rescue TypeError => error
          fail TypeError.new("#{self.class}##{key} is mistyped: #{error.message}")
        end
        response.send(key)
      end
    end
  end

  sig do
    void
  end
  def test_15()
    stub_request(:put, "https://test-shop.myshopify.io/admin/api/2025-07/products/632910392.json")
      .with(
        headers: {"X-Shopify-Access-Token"=>"this_is_a_test_token", "Accept"=>"application/json", "Content-Type"=>"application/json"},
        body: { "product" => hash_including({"images" => [{"id" => 850703190}, {"id" => 562641783}, {"id" => 378407906}, {"src" => "http://example.com/rails_logo.gif"}]}) }
      )
      .to_return(status: 200, body: JSON.generate({"product" => {"id" => 632910392, "title" => "IPod Nano - 8GB", "body_html" => "<p>It's the small iPod with one very big idea: Video. Now the world's most popular music player, available in 4GB and 8GB models, lets you enjoy TV shows, movies, video podcasts, and more. The larger, brighter display means amazing picture quality. In six eye-catching colors, iPod nano is stunning all around. And with models starting at just $149, little speaks volumes.</p>", "vendor" => "Apple", "product_type" => "Cult Products", "created_at" => "2025-07-02T11:29:59-05:00", "handle" => "ipod-nano", "updated_at" => "2025-07-02T11:36:58-05:00", "published_at" => "2007-12-31T19:00:00-05:00", "template_suffix" => nil, "published_scope" => "web", "tags" => "Emotive, Flash Memory, MP3, Music", "status" => "active", "admin_graphql_api_id" => "gid://shopify/Product/632910392", "variants" => [{"id" => 808950810, "product_id" => 632910392, "title" => "Pink", "price" => "199.00", "position" => 1, "inventory_policy" => "continue", "compare_at_price" => nil, "option1" => "Pink", "option2" => nil, "option3" => nil, "created_at" => "2025-07-02T11:29:59-05:00", "updated_at" => "2025-07-02T11:29:59-05:00", "taxable" => true, "barcode" => "1234_pink", "fulfillment_service" => "manual", "grams" => 567, "inventory_management" => "shopify", "requires_shipping" => true, "sku" => "IPOD2008PINK", "weight" => 1.25, "weight_unit" => "lb", "inventory_item_id" => 808950810, "inventory_quantity" => 10, "old_inventory_quantity" => 10, "presentment_prices" => [{"price" => {"amount" => "199.00", "currency_code" => "USD"}, "compare_at_price" => nil}], "admin_graphql_api_id" => "gid://shopify/ProductVariant/808950810", "image_id" => 562641783}, {"id" => 49148385, "product_id" => 632910392, "title" => "Red", "price" => "199.00", "position" => 2, "inventory_policy" => "continue", "compare_at_price" => nil, "option1" => "Red", "option2" => nil, "option3" => nil, "created_at" => "2025-07-02T11:29:59-05:00", "updated_at" => "2025-07-02T11:29:59-05:00", "taxable" => true, "barcode" => "1234_red", "fulfillment_service" => "manual", "grams" => 567, "inventory_management" => "shopify", "requires_shipping" => true, "sku" => "IPOD2008RED", "weight" => 1.25, "weight_unit" => "lb", "inventory_item_id" => 49148385, "inventory_quantity" => 20, "old_inventory_quantity" => 20, "presentment_prices" => [{"price" => {"amount" => "199.00", "currency_code" => "USD"}, "compare_at_price" => nil}], "admin_graphql_api_id" => "gid://shopify/ProductVariant/49148385", "image_id" => nil}, {"id" => 39072856, "product_id" => 632910392, "title" => "Green", "price" => "199.00", "position" => 3, "inventory_policy" => "continue", "compare_at_price" => nil, "option1" => "Green", "option2" => nil, "option3" => nil, "created_at" => "2025-07-02T11:29:59-05:00", "updated_at" => "2025-07-02T11:29:59-05:00", "taxable" => true, "barcode" => "1234_green", "fulfillment_service" => "manual", "grams" => 567, "inventory_management" => "shopify", "requires_shipping" => true, "sku" => "IPOD2008GREEN", "weight" => 1.25, "weight_unit" => "lb", "inventory_item_id" => 39072856, "inventory_quantity" => 30, "old_inventory_quantity" => 30, "presentment_prices" => [{"price" => {"amount" => "199.00", "currency_code" => "USD"}, "compare_at_price" => nil}], "admin_graphql_api_id" => "gid://shopify/ProductVariant/39072856", "image_id" => nil}, {"id" => 457924702, "product_id" => 632910392, "title" => "Black", "price" => "199.00", "position" => 4, "inventory_policy" => "continue", "compare_at_price" => nil, "option1" => "Black", "option2" => nil, "option3" => nil, "created_at" => "2025-07-02T11:29:59-05:00", "updated_at" => "2025-07-02T11:29:59-05:00", "taxable" => true, "barcode" => "1234_black", "fulfillment_service" => "manual", "grams" => 567, "inventory_management" => "shopify", "requires_shipping" => true, "sku" => "IPOD2008BLACK", "weight" => 1.25, "weight_unit" => "lb", "inventory_item_id" => 457924702, "inventory_quantity" => 40, "old_inventory_quantity" => 40, "presentment_prices" => [{"price" => {"amount" => "199.00", "currency_code" => "USD"}, "compare_at_price" => nil}], "admin_graphql_api_id" => "gid://shopify/ProductVariant/457924702", "image_id" => nil}], "options" => [{"id" => 594680422, "product_id" => 632910392, "name" => "Color", "position" => 1, "values" => ["Pink", "Red", "Green", "Black"]}], "images" => [{"id" => 850703190, "alt" => nil, "position" => 1, "product_id" => 632910392, "created_at" => "2025-07-02T11:29:59-05:00", "updated_at" => "2025-07-02T11:29:59-05:00", "admin_graphql_api_id" => "gid://shopify/MediaImage/498048120", "width" => 123, "height" => 456, "src" => "https://cdn.shopify.com/s/files/1/0005/4838/0009/products/ipod-nano.png?v=1735835399", "variant_ids" => []}, {"id" => 562641783, "alt" => nil, "position" => 2, "product_id" => 632910392, "created_at" => "2025-07-02T11:29:59-05:00", "updated_at" => "2025-07-02T11:29:59-05:00", "admin_graphql_api_id" => "gid://shopify/MediaImage/1071517486", "width" => 123, "height" => 456, "src" => "https://cdn.shopify.com/s/files/1/0005/4838/0009/products/ipod-nano-2.png?v=1735835399", "variant_ids" => [808950810]}, {"id" => 378407906, "alt" => nil, "position" => 3, "product_id" => 632910392, "created_at" => "2025-07-02T11:29:59-05:00", "updated_at" => "2025-07-02T11:29:59-05:00", "admin_graphql_api_id" => "gid://shopify/MediaImage/220090436", "width" => 123, "height" => 456, "src" => "https://cdn.shopify.com/s/files/1/0005/4838/0009/products/ipod-nano.png?v=1735835399", "variant_ids" => []}, {"id" => 1001473910, "alt" => nil, "position" => 4, "product_id" => 632910392, "created_at" => "2025-07-02T11:36:58-05:00", "updated_at" => "2025-07-02T11:36:58-05:00", "admin_graphql_api_id" => "gid://shopify/MediaImage/1072273207", "width" => 110, "height" => 140, "src" => "https://cdn.shopify.com/s/files/1/0005/4838/0009/files/rails_logo20250702-63224-i8ga8z.gif?v=1735835818", "variant_ids" => []}], "image" => {"id" => 850703190, "alt" => nil, "position" => 1, "product_id" => 632910392, "created_at" => "2025-07-02T11:29:59-05:00", "updated_at" => "2025-07-02T11:29:59-05:00", "admin_graphql_api_id" => "gid://shopify/MediaImage/498048120", "width" => 123, "height" => 456, "src" => "https://cdn.shopify.com/s/files/1/0005/4838/0009/products/ipod-nano.png?v=1735835399", "variant_ids" => []}}}), headers: {})

    response = product = ShopifyAPI::Product.new
    product.id = 632910392
    product.images = [
      {
        "id" => 850703190
      },
      {
        "id" => 562641783
      },
      {
        "id" => 378407906
      },
      {
        "src" => "http://example.com/rails_logo.gif"
      }
    ]
    product.save

    assert_requested(:put, "https://test-shop.myshopify.io/admin/api/2025-07/products/632910392.json")

    response = response.first if response.respond_to?(:first)

    # Assert attributes are correctly typed preventing Sorbet errors downstream
    if response.respond_to?(:original_state)
      response&.original_state&.each do |key, value|
        begin
          response.send(key)
        rescue TypeError => error
          fail TypeError.new("#{self.class}##{key} is mistyped: #{error.message}")
        end
        response.send(key)
      end
    end
  end

  sig do
    void
  end
  def test_16()
    stub_request(:put, "https://test-shop.myshopify.io/admin/api/2025-07/products/632910392.json")
      .with(
        headers: {"X-Shopify-Access-Token"=>"this_is_a_test_token", "Accept"=>"application/json", "Content-Type"=>"application/json"},
        body: { "product" => hash_including({"images" => []}) }
      )
      .to_return(status: 200, body: JSON.generate({"product" => {"id" => 632910392, "title" => "IPod Nano - 8GB", "body_html" => "<p>It's the small iPod with one very big idea: Video. Now the world's most popular music player, available in 4GB and 8GB models, lets you enjoy TV shows, movies, video podcasts, and more. The larger, brighter display means amazing picture quality. In six eye-catching colors, iPod nano is stunning all around. And with models starting at just $149, little speaks volumes.</p>", "vendor" => "Apple", "product_type" => "Cult Products", "created_at" => "2025-07-02T11:29:59-05:00", "handle" => "ipod-nano", "updated_at" => "2025-07-02T11:35:58-05:00", "published_at" => "2007-12-31T19:00:00-05:00", "template_suffix" => nil, "published_scope" => "web", "tags" => "Emotive, Flash Memory, MP3, Music", "status" => "active", "admin_graphql_api_id" => "gid://shopify/Product/632910392", "variants" => [{"id" => 808950810, "product_id" => 632910392, "title" => "Pink", "price" => "199.00", "position" => 1, "inventory_policy" => "continue", "compare_at_price" => nil, "option1" => "Pink", "option2" => nil, "option3" => nil, "created_at" => "2025-07-02T11:29:59-05:00", "updated_at" => "2025-07-02T11:35:58-05:00", "taxable" => true, "barcode" => "1234_pink", "fulfillment_service" => "manual", "grams" => 567, "inventory_management" => "shopify", "requires_shipping" => true, "sku" => "IPOD2008PINK", "weight" => 1.25, "weight_unit" => "lb", "inventory_item_id" => 808950810, "inventory_quantity" => 10, "old_inventory_quantity" => 10, "presentment_prices" => [{"price" => {"amount" => "199.00", "currency_code" => "USD"}, "compare_at_price" => nil}], "admin_graphql_api_id" => "gid://shopify/ProductVariant/808950810", "image_id" => nil}, {"id" => 49148385, "product_id" => 632910392, "title" => "Red", "price" => "199.00", "position" => 2, "inventory_policy" => "continue", "compare_at_price" => nil, "option1" => "Red", "option2" => nil, "option3" => nil, "created_at" => "2025-07-02T11:29:59-05:00", "updated_at" => "2025-07-02T11:29:59-05:00", "taxable" => true, "barcode" => "1234_red", "fulfillment_service" => "manual", "grams" => 567, "inventory_management" => "shopify", "requires_shipping" => true, "sku" => "IPOD2008RED", "weight" => 1.25, "weight_unit" => "lb", "inventory_item_id" => 49148385, "inventory_quantity" => 20, "old_inventory_quantity" => 20, "presentment_prices" => [{"price" => {"amount" => "199.00", "currency_code" => "USD"}, "compare_at_price" => nil}], "admin_graphql_api_id" => "gid://shopify/ProductVariant/49148385", "image_id" => nil}, {"id" => 39072856, "product_id" => 632910392, "title" => "Green", "price" => "199.00", "position" => 3, "inventory_policy" => "continue", "compare_at_price" => nil, "option1" => "Green", "option2" => nil, "option3" => nil, "created_at" => "2025-07-02T11:29:59-05:00", "updated_at" => "2025-07-02T11:29:59-05:00", "taxable" => true, "barcode" => "1234_green", "fulfillment_service" => "manual", "grams" => 567, "inventory_management" => "shopify", "requires_shipping" => true, "sku" => "IPOD2008GREEN", "weight" => 1.25, "weight_unit" => "lb", "inventory_item_id" => 39072856, "inventory_quantity" => 30, "old_inventory_quantity" => 30, "presentment_prices" => [{"price" => {"amount" => "199.00", "currency_code" => "USD"}, "compare_at_price" => nil}], "admin_graphql_api_id" => "gid://shopify/ProductVariant/39072856", "image_id" => nil}, {"id" => 457924702, "product_id" => 632910392, "title" => "Black", "price" => "199.00", "position" => 4, "inventory_policy" => "continue", "compare_at_price" => nil, "option1" => "Black", "option2" => nil, "option3" => nil, "created_at" => "2025-07-02T11:29:59-05:00", "updated_at" => "2025-07-02T11:29:59-05:00", "taxable" => true, "barcode" => "1234_black", "fulfillment_service" => "manual", "grams" => 567, "inventory_management" => "shopify", "requires_shipping" => true, "sku" => "IPOD2008BLACK", "weight" => 1.25, "weight_unit" => "lb", "inventory_item_id" => 457924702, "inventory_quantity" => 40, "old_inventory_quantity" => 40, "presentment_prices" => [{"price" => {"amount" => "199.00", "currency_code" => "USD"}, "compare_at_price" => nil}], "admin_graphql_api_id" => "gid://shopify/ProductVariant/457924702", "image_id" => nil}], "options" => [{"id" => 594680422, "product_id" => 632910392, "name" => "Color", "position" => 1, "values" => ["Pink", "Red", "Green", "Black"]}], "images" => [], "image" => nil}}), headers: {})

    response = product = ShopifyAPI::Product.new
    product.id = 632910392
    product.images = []
    product.save

    assert_requested(:put, "https://test-shop.myshopify.io/admin/api/2025-07/products/632910392.json")

    response = response.first if response.respond_to?(:first)

    # Assert attributes are correctly typed preventing Sorbet errors downstream
    if response.respond_to?(:original_state)
      response&.original_state&.each do |key, value|
        begin
          response.send(key)
        rescue TypeError => error
          fail TypeError.new("#{self.class}##{key} is mistyped: #{error.message}")
        end
        response.send(key)
      end
    end
  end

  sig do
    void
  end
  def test_17()
    stub_request(:put, "https://test-shop.myshopify.io/admin/api/2025-07/products/632910392.json")
      .with(
        headers: {"X-Shopify-Access-Token"=>"this_is_a_test_token", "Accept"=>"application/json", "Content-Type"=>"application/json"},
        body: { "product" => hash_including({"images" => [{"id" => 850703190, "position" => 3}, {"id" => 562641783, "position" => 2}, {"id" => 378407906, "position" => 1}]}) }
      )
      .to_return(status: 200, body: JSON.generate({"product" => {"id" => 632910392, "title" => "IPod Nano - 8GB", "body_html" => "<p>It's the small iPod with one very big idea: Video. Now the world's most popular music player, available in 4GB and 8GB models, lets you enjoy TV shows, movies, video podcasts, and more. The larger, brighter display means amazing picture quality. In six eye-catching colors, iPod nano is stunning all around. And with models starting at just $149, little speaks volumes.</p>", "vendor" => "Apple", "product_type" => "Cult Products", "created_at" => "2025-07-02T11:29:59-05:00", "handle" => "ipod-nano", "updated_at" => "2025-07-02T11:36:44-05:00", "published_at" => "2007-12-31T19:00:00-05:00", "template_suffix" => nil, "published_scope" => "web", "tags" => "Emotive, Flash Memory, MP3, Music", "status" => "active", "admin_graphql_api_id" => "gid://shopify/Product/632910392", "variants" => [{"id" => 808950810, "product_id" => 632910392, "title" => "Pink", "price" => "199.00", "position" => 1, "inventory_policy" => "continue", "compare_at_price" => nil, "option1" => "Pink", "option2" => nil, "option3" => nil, "created_at" => "2025-07-02T11:29:59-05:00", "updated_at" => "2025-07-02T11:29:59-05:00", "taxable" => true, "barcode" => "1234_pink", "fulfillment_service" => "manual", "grams" => 567, "inventory_management" => "shopify", "requires_shipping" => true, "sku" => "IPOD2008PINK", "weight" => 1.25, "weight_unit" => "lb", "inventory_item_id" => 808950810, "inventory_quantity" => 10, "old_inventory_quantity" => 10, "presentment_prices" => [{"price" => {"amount" => "199.00", "currency_code" => "USD"}, "compare_at_price" => nil}], "admin_graphql_api_id" => "gid://shopify/ProductVariant/808950810", "image_id" => 562641783}, {"id" => 49148385, "product_id" => 632910392, "title" => "Red", "price" => "199.00", "position" => 2, "inventory_policy" => "continue", "compare_at_price" => nil, "option1" => "Red", "option2" => nil, "option3" => nil, "created_at" => "2025-07-02T11:29:59-05:00", "updated_at" => "2025-07-02T11:29:59-05:00", "taxable" => true, "barcode" => "1234_red", "fulfillment_service" => "manual", "grams" => 567, "inventory_management" => "shopify", "requires_shipping" => true, "sku" => "IPOD2008RED", "weight" => 1.25, "weight_unit" => "lb", "inventory_item_id" => 49148385, "inventory_quantity" => 20, "old_inventory_quantity" => 20, "presentment_prices" => [{"price" => {"amount" => "199.00", "currency_code" => "USD"}, "compare_at_price" => nil}], "admin_graphql_api_id" => "gid://shopify/ProductVariant/49148385", "image_id" => nil}, {"id" => 39072856, "product_id" => 632910392, "title" => "Green", "price" => "199.00", "position" => 3, "inventory_policy" => "continue", "compare_at_price" => nil, "option1" => "Green", "option2" => nil, "option3" => nil, "created_at" => "2025-07-02T11:29:59-05:00", "updated_at" => "2025-07-02T11:29:59-05:00", "taxable" => true, "barcode" => "1234_green", "fulfillment_service" => "manual", "grams" => 567, "inventory_management" => "shopify", "requires_shipping" => true, "sku" => "IPOD2008GREEN", "weight" => 1.25, "weight_unit" => "lb", "inventory_item_id" => 39072856, "inventory_quantity" => 30, "old_inventory_quantity" => 30, "presentment_prices" => [{"price" => {"amount" => "199.00", "currency_code" => "USD"}, "compare_at_price" => nil}], "admin_graphql_api_id" => "gid://shopify/ProductVariant/39072856", "image_id" => nil}, {"id" => 457924702, "product_id" => 632910392, "title" => "Black", "price" => "199.00", "position" => 4, "inventory_policy" => "continue", "compare_at_price" => nil, "option1" => "Black", "option2" => nil, "option3" => nil, "created_at" => "2025-07-02T11:29:59-05:00", "updated_at" => "2025-07-02T11:29:59-05:00", "taxable" => true, "barcode" => "1234_black", "fulfillment_service" => "manual", "grams" => 567, "inventory_management" => "shopify", "requires_shipping" => true, "sku" => "IPOD2008BLACK", "weight" => 1.25, "weight_unit" => "lb", "inventory_item_id" => 457924702, "inventory_quantity" => 40, "old_inventory_quantity" => 40, "presentment_prices" => [{"price" => {"amount" => "199.00", "currency_code" => "USD"}, "compare_at_price" => nil}], "admin_graphql_api_id" => "gid://shopify/ProductVariant/457924702", "image_id" => nil}], "options" => [{"id" => 594680422, "product_id" => 632910392, "name" => "Color", "position" => 1, "values" => ["Pink", "Red", "Green", "Black"]}], "images" => [{"id" => 378407906, "alt" => nil, "position" => 1, "product_id" => 632910392, "created_at" => "2025-07-02T11:29:59-05:00", "updated_at" => "2025-07-02T11:36:44-05:00", "admin_graphql_api_id" => "gid://shopify/MediaImage/220090436", "width" => 123, "height" => 456, "src" => "https://cdn.shopify.com/s/files/1/0005/4838/0009/products/ipod-nano.png?v=1735835399", "variant_ids" => []}, {"id" => 850703190, "alt" => nil, "position" => 2, "product_id" => 632910392, "created_at" => "2025-07-02T11:29:59-05:00", "updated_at" => "2025-07-02T11:36:44-05:00", "admin_graphql_api_id" => "gid://shopify/MediaImage/498048120", "width" => 123, "height" => 456, "src" => "https://cdn.shopify.com/s/files/1/0005/4838/0009/products/ipod-nano.png?v=1735835804", "variant_ids" => []}, {"id" => 562641783, "alt" => nil, "position" => 3, "product_id" => 632910392, "created_at" => "2025-07-02T11:29:59-05:00", "updated_at" => "2025-07-02T11:29:59-05:00", "admin_graphql_api_id" => "gid://shopify/MediaImage/1071517486", "width" => 123, "height" => 456, "src" => "https://cdn.shopify.com/s/files/1/0005/4838/0009/products/ipod-nano-2.png?v=1735835399", "variant_ids" => [808950810]}], "image" => {"id" => 378407906, "alt" => nil, "position" => 1, "product_id" => 632910392, "created_at" => "2025-07-02T11:29:59-05:00", "updated_at" => "2025-07-02T11:36:44-05:00", "admin_graphql_api_id" => "gid://shopify/MediaImage/220090436", "width" => 123, "height" => 456, "src" => "https://cdn.shopify.com/s/files/1/0005/4838/0009/products/ipod-nano.png?v=1735835399", "variant_ids" => []}}}), headers: {})

    response = product = ShopifyAPI::Product.new
    product.id = 632910392
    product.images = [
      {
        "id" => 850703190,
        "position" => 3
      },
      {
        "id" => 562641783,
        "position" => 2
      },
      {
        "id" => 378407906,
        "position" => 1
      }
    ]
    product.save

    assert_requested(:put, "https://test-shop.myshopify.io/admin/api/2025-07/products/632910392.json")

    response = response.first if response.respond_to?(:first)

    # Assert attributes are correctly typed preventing Sorbet errors downstream
    if response.respond_to?(:original_state)
      response&.original_state&.each do |key, value|
        begin
          response.send(key)
        rescue TypeError => error
          fail TypeError.new("#{self.class}##{key} is mistyped: #{error.message}")
        end
        response.send(key)
      end
    end
  end

  sig do
    void
  end
  def test_18()
    stub_request(:put, "https://test-shop.myshopify.io/admin/api/2025-07/products/632910392.json")
      .with(
        headers: {"X-Shopify-Access-Token"=>"this_is_a_test_token", "Accept"=>"application/json", "Content-Type"=>"application/json"},
        body: { "product" => hash_including({"variants" => [{"id" => 457924702}, {"id" => 39072856}, {"id" => 49148385}, {"id" => 808950810}]}) }
      )
      .to_return(status: 200, body: JSON.generate({"product" => {"id" => 632910392, "title" => "IPod Nano - 8GB", "body_html" => "<p>It's the small iPod with one very big idea: Video. Now the world's most popular music player, available in 4GB and 8GB models, lets you enjoy TV shows, movies, video podcasts, and more. The larger, brighter display means amazing picture quality. In six eye-catching colors, iPod nano is stunning all around. And with models starting at just $149, little speaks volumes.</p>", "vendor" => "Apple", "product_type" => "Cult Products", "created_at" => "2025-07-02T11:29:59-05:00", "handle" => "ipod-nano", "updated_at" => "2025-07-02T11:36:38-05:00", "published_at" => "2007-12-31T19:00:00-05:00", "template_suffix" => nil, "published_scope" => "web", "tags" => "Emotive, Flash Memory, MP3, Music", "status" => "active", "admin_graphql_api_id" => "gid://shopify/Product/632910392", "variants" => [{"id" => 457924702, "product_id" => 632910392, "title" => "Black", "price" => "199.00", "position" => 1, "inventory_policy" => "continue", "compare_at_price" => nil, "option1" => "Black", "option2" => nil, "option3" => nil, "created_at" => "2025-07-02T11:29:59-05:00", "updated_at" => "2025-07-02T11:36:38-05:00", "taxable" => true, "barcode" => "1234_black", "fulfillment_service" => "manual", "grams" => 567, "inventory_management" => "shopify", "requires_shipping" => true, "sku" => "IPOD2008BLACK", "weight" => 1.25, "weight_unit" => "lb", "inventory_item_id" => 457924702, "inventory_quantity" => 40, "old_inventory_quantity" => 40, "presentment_prices" => [{"price" => {"amount" => "199.00", "currency_code" => "USD"}, "compare_at_price" => nil}], "admin_graphql_api_id" => "gid://shopify/ProductVariant/457924702", "image_id" => nil}, {"id" => 39072856, "product_id" => 632910392, "title" => "Green", "price" => "199.00", "position" => 2, "inventory_policy" => "continue", "compare_at_price" => nil, "option1" => "Green", "option2" => nil, "option3" => nil, "created_at" => "2025-07-02T11:29:59-05:00", "updated_at" => "2025-07-02T11:36:38-05:00", "taxable" => true, "barcode" => "1234_green", "fulfillment_service" => "manual", "grams" => 567, "inventory_management" => "shopify", "requires_shipping" => true, "sku" => "IPOD2008GREEN", "weight" => 1.25, "weight_unit" => "lb", "inventory_item_id" => 39072856, "inventory_quantity" => 30, "old_inventory_quantity" => 30, "presentment_prices" => [{"price" => {"amount" => "199.00", "currency_code" => "USD"}, "compare_at_price" => nil}], "admin_graphql_api_id" => "gid://shopify/ProductVariant/39072856", "image_id" => nil}, {"id" => 49148385, "product_id" => 632910392, "title" => "Red", "price" => "199.00", "position" => 3, "inventory_policy" => "continue", "compare_at_price" => nil, "option1" => "Red", "option2" => nil, "option3" => nil, "created_at" => "2025-07-02T11:29:59-05:00", "updated_at" => "2025-07-02T11:36:38-05:00", "taxable" => true, "barcode" => "1234_red", "fulfillment_service" => "manual", "grams" => 567, "inventory_management" => "shopify", "requires_shipping" => true, "sku" => "IPOD2008RED", "weight" => 1.25, "weight_unit" => "lb", "inventory_item_id" => 49148385, "inventory_quantity" => 20, "old_inventory_quantity" => 20, "presentment_prices" => [{"price" => {"amount" => "199.00", "currency_code" => "USD"}, "compare_at_price" => nil}], "admin_graphql_api_id" => "gid://shopify/ProductVariant/49148385", "image_id" => nil}, {"id" => 808950810, "product_id" => 632910392, "title" => "Pink", "price" => "199.00", "position" => 4, "inventory_policy" => "continue", "compare_at_price" => nil, "option1" => "Pink", "option2" => nil, "option3" => nil, "created_at" => "2025-07-02T11:29:59-05:00", "updated_at" => "2025-07-02T11:36:38-05:00", "taxable" => true, "barcode" => "1234_pink", "fulfillment_service" => "manual", "grams" => 567, "inventory_management" => "shopify", "requires_shipping" => true, "sku" => "IPOD2008PINK", "weight" => 1.25, "weight_unit" => "lb", "inventory_item_id" => 808950810, "inventory_quantity" => 10, "old_inventory_quantity" => 10, "presentment_prices" => [{"price" => {"amount" => "199.00", "currency_code" => "USD"}, "compare_at_price" => nil}], "admin_graphql_api_id" => "gid://shopify/ProductVariant/808950810", "image_id" => 562641783}], "options" => [{"id" => 594680422, "product_id" => 632910392, "name" => "Color", "position" => 1, "values" => ["Black", "Green", "Red", "Pink"]}], "images" => [{"id" => 850703190, "alt" => nil, "position" => 1, "product_id" => 632910392, "created_at" => "2025-07-02T11:29:59-05:00", "updated_at" => "2025-07-02T11:29:59-05:00", "admin_graphql_api_id" => "gid://shopify/MediaImage/498048120", "width" => 123, "height" => 456, "src" => "https://cdn.shopify.com/s/files/1/0005/4838/0009/products/ipod-nano.png?v=1735835399", "variant_ids" => []}, {"id" => 562641783, "alt" => nil, "position" => 2, "product_id" => 632910392, "created_at" => "2025-07-02T11:29:59-05:00", "updated_at" => "2025-07-02T11:29:59-05:00", "admin_graphql_api_id" => "gid://shopify/MediaImage/1071517486", "width" => 123, "height" => 456, "src" => "https://cdn.shopify.com/s/files/1/0005/4838/0009/products/ipod-nano-2.png?v=1735835399", "variant_ids" => [808950810]}, {"id" => 378407906, "alt" => nil, "position" => 3, "product_id" => 632910392, "created_at" => "2025-07-02T11:29:59-05:00", "updated_at" => "2025-07-02T11:29:59-05:00", "admin_graphql_api_id" => "gid://shopify/MediaImage/220090436", "width" => 123, "height" => 456, "src" => "https://cdn.shopify.com/s/files/1/0005/4838/0009/products/ipod-nano.png?v=1735835399", "variant_ids" => []}], "image" => {"id" => 850703190, "alt" => nil, "position" => 1, "product_id" => 632910392, "created_at" => "2025-07-02T11:29:59-05:00", "updated_at" => "2025-07-02T11:29:59-05:00", "admin_graphql_api_id" => "gid://shopify/MediaImage/498048120", "width" => 123, "height" => 456, "src" => "https://cdn.shopify.com/s/files/1/0005/4838/0009/products/ipod-nano.png?v=1735835399", "variant_ids" => []}}}), headers: {})

    response = product = ShopifyAPI::Product.new
    product.id = 632910392
    product.variants = [
      {
        "id" => 457924702
      },
      {
        "id" => 39072856
      },
      {
        "id" => 49148385
      },
      {
        "id" => 808950810
      }
    ]
    product.save

    assert_requested(:put, "https://test-shop.myshopify.io/admin/api/2025-07/products/632910392.json")

    response = response.first if response.respond_to?(:first)

    # Assert attributes are correctly typed preventing Sorbet errors downstream
    if response.respond_to?(:original_state)
      response&.original_state&.each do |key, value|
        begin
          response.send(key)
        rescue TypeError => error
          fail TypeError.new("#{self.class}##{key} is mistyped: #{error.message}")
        end
        response.send(key)
      end
    end
  end

  sig do
    void
  end
  def test_19()
    stub_request(:put, "https://test-shop.myshopify.io/admin/api/2025-07/products/632910392.json")
      .with(
        headers: {"X-Shopify-Access-Token"=>"this_is_a_test_token", "Accept"=>"application/json", "Content-Type"=>"application/json"},
        body: { "product" => hash_including({"metafields_global_title_tag" => "Brand new title", "metafields_global_description_tag" => "Brand new description"}) }
      )
      .to_return(status: 200, body: JSON.generate({"product" => {"id" => 632910392, "title" => "IPod Nano - 8GB", "body_html" => "<p>It's the small iPod with one very big idea: Video. Now the world's most popular music player, available in 4GB and 8GB models, lets you enjoy TV shows, movies, video podcasts, and more. The larger, brighter display means amazing picture quality. In six eye-catching colors, iPod nano is stunning all around. And with models starting at just $149, little speaks volumes.</p>", "vendor" => "Apple", "product_type" => "Cult Products", "created_at" => "2025-07-02T11:29:59-05:00", "handle" => "ipod-nano", "updated_at" => "2025-07-02T11:29:59-05:00", "published_at" => "2007-12-31T19:00:00-05:00", "template_suffix" => nil, "published_scope" => "web", "tags" => "Emotive, Flash Memory, MP3, Music", "status" => "active", "admin_graphql_api_id" => "gid://shopify/Product/632910392", "variants" => [{"id" => 808950810, "product_id" => 632910392, "title" => "Pink", "price" => "199.00", "position" => 1, "inventory_policy" => "continue", "compare_at_price" => nil, "option1" => "Pink", "option2" => nil, "option3" => nil, "created_at" => "2025-07-02T11:29:59-05:00", "updated_at" => "2025-07-02T11:29:59-05:00", "taxable" => true, "barcode" => "1234_pink", "fulfillment_service" => "manual", "grams" => 567, "inventory_management" => "shopify", "requires_shipping" => true, "sku" => "IPOD2008PINK", "weight" => 1.25, "weight_unit" => "lb", "inventory_item_id" => 808950810, "inventory_quantity" => 10, "old_inventory_quantity" => 10, "presentment_prices" => [{"price" => {"amount" => "199.00", "currency_code" => "USD"}, "compare_at_price" => nil}], "admin_graphql_api_id" => "gid://shopify/ProductVariant/808950810", "image_id" => 562641783}, {"id" => 49148385, "product_id" => 632910392, "title" => "Red", "price" => "199.00", "position" => 2, "inventory_policy" => "continue", "compare_at_price" => nil, "option1" => "Red", "option2" => nil, "option3" => nil, "created_at" => "2025-07-02T11:29:59-05:00", "updated_at" => "2025-07-02T11:29:59-05:00", "taxable" => true, "barcode" => "1234_red", "fulfillment_service" => "manual", "grams" => 567, "inventory_management" => "shopify", "requires_shipping" => true, "sku" => "IPOD2008RED", "weight" => 1.25, "weight_unit" => "lb", "inventory_item_id" => 49148385, "inventory_quantity" => 20, "old_inventory_quantity" => 20, "presentment_prices" => [{"price" => {"amount" => "199.00", "currency_code" => "USD"}, "compare_at_price" => nil}], "admin_graphql_api_id" => "gid://shopify/ProductVariant/49148385", "image_id" => nil}, {"id" => 39072856, "product_id" => 632910392, "title" => "Green", "price" => "199.00", "position" => 3, "inventory_policy" => "continue", "compare_at_price" => nil, "option1" => "Green", "option2" => nil, "option3" => nil, "created_at" => "2025-07-02T11:29:59-05:00", "updated_at" => "2025-07-02T11:29:59-05:00", "taxable" => true, "barcode" => "1234_green", "fulfillment_service" => "manual", "grams" => 567, "inventory_management" => "shopify", "requires_shipping" => true, "sku" => "IPOD2008GREEN", "weight" => 1.25, "weight_unit" => "lb", "inventory_item_id" => 39072856, "inventory_quantity" => 30, "old_inventory_quantity" => 30, "presentment_prices" => [{"price" => {"amount" => "199.00", "currency_code" => "USD"}, "compare_at_price" => nil}], "admin_graphql_api_id" => "gid://shopify/ProductVariant/39072856", "image_id" => nil}, {"id" => 457924702, "product_id" => 632910392, "title" => "Black", "price" => "199.00", "position" => 4, "inventory_policy" => "continue", "compare_at_price" => nil, "option1" => "Black", "option2" => nil, "option3" => nil, "created_at" => "2025-07-02T11:29:59-05:00", "updated_at" => "2025-07-02T11:29:59-05:00", "taxable" => true, "barcode" => "1234_black", "fulfillment_service" => "manual", "grams" => 567, "inventory_management" => "shopify", "requires_shipping" => true, "sku" => "IPOD2008BLACK", "weight" => 1.25, "weight_unit" => "lb", "inventory_item_id" => 457924702, "inventory_quantity" => 40, "old_inventory_quantity" => 40, "presentment_prices" => [{"price" => {"amount" => "199.00", "currency_code" => "USD"}, "compare_at_price" => nil}], "admin_graphql_api_id" => "gid://shopify/ProductVariant/457924702", "image_id" => nil}], "options" => [{"id" => 594680422, "product_id" => 632910392, "name" => "Color", "position" => 1, "values" => ["Pink", "Red", "Green", "Black"]}], "images" => [{"id" => 850703190, "alt" => nil, "position" => 1, "product_id" => 632910392, "created_at" => "2025-07-02T11:29:59-05:00", "updated_at" => "2025-07-02T11:29:59-05:00", "admin_graphql_api_id" => "gid://shopify/MediaImage/498048120", "width" => 123, "height" => 456, "src" => "https://cdn.shopify.com/s/files/1/0005/4838/0009/products/ipod-nano.png?v=1735835399", "variant_ids" => []}, {"id" => 562641783, "alt" => nil, "position" => 2, "product_id" => 632910392, "created_at" => "2025-07-02T11:29:59-05:00", "updated_at" => "2025-07-02T11:29:59-05:00", "admin_graphql_api_id" => "gid://shopify/MediaImage/1071517486", "width" => 123, "height" => 456, "src" => "https://cdn.shopify.com/s/files/1/0005/4838/0009/products/ipod-nano-2.png?v=1735835399", "variant_ids" => [808950810]}, {"id" => 378407906, "alt" => nil, "position" => 3, "product_id" => 632910392, "created_at" => "2025-07-02T11:29:59-05:00", "updated_at" => "2025-07-02T11:29:59-05:00", "admin_graphql_api_id" => "gid://shopify/MediaImage/220090436", "width" => 123, "height" => 456, "src" => "https://cdn.shopify.com/s/files/1/0005/4838/0009/products/ipod-nano.png?v=1735835399", "variant_ids" => []}], "image" => {"id" => 850703190, "alt" => nil, "position" => 1, "product_id" => 632910392, "created_at" => "2025-07-02T11:29:59-05:00", "updated_at" => "2025-07-02T11:29:59-05:00", "admin_graphql_api_id" => "gid://shopify/MediaImage/498048120", "width" => 123, "height" => 456, "src" => "https://cdn.shopify.com/s/files/1/0005/4838/0009/products/ipod-nano.png?v=1735835399", "variant_ids" => []}}}), headers: {})

    response = product = ShopifyAPI::Product.new
    product.id = 632910392
    product.metafields_global_title_tag = "Brand new title"
    product.metafields_global_description_tag = "Brand new description"
    product.save

    assert_requested(:put, "https://test-shop.myshopify.io/admin/api/2025-07/products/632910392.json")

    response = response.first if response.respond_to?(:first)

    # Assert attributes are correctly typed preventing Sorbet errors downstream
    if response.respond_to?(:original_state)
      response&.original_state&.each do |key, value|
        begin
          response.send(key)
        rescue TypeError => error
          fail TypeError.new("#{self.class}##{key} is mistyped: #{error.message}")
        end
        response.send(key)
      end
    end
  end

  sig do
    void
  end
  def test_20()
    stub_request(:put, "https://test-shop.myshopify.io/admin/api/2025-07/products/632910392.json")
      .with(
        headers: {"X-Shopify-Access-Token"=>"this_is_a_test_token", "Accept"=>"application/json", "Content-Type"=>"application/json"},
        body: { "product" => hash_including({"status" => "draft"}) }
      )
      .to_return(status: 200, body: JSON.generate({"product" => {"id" => 632910392, "title" => "IPod Nano - 8GB", "body_html" => "<p>It's the small iPod with one very big idea: Video. Now the world's most popular music player, available in 4GB and 8GB models, lets you enjoy TV shows, movies, video podcasts, and more. The larger, brighter display means amazing picture quality. In six eye-catching colors, iPod nano is stunning all around. And with models starting at just $149, little speaks volumes.</p>", "vendor" => "Apple", "product_type" => "Cult Products", "created_at" => "2025-07-02T11:29:59-05:00", "handle" => "ipod-nano", "updated_at" => "2025-07-02T11:36:49-05:00", "published_at" => nil, "template_suffix" => nil, "published_scope" => "web", "tags" => "Emotive, Flash Memory, MP3, Music", "status" => "draft", "admin_graphql_api_id" => "gid://shopify/Product/632910392", "variants" => [{"id" => 808950810, "product_id" => 632910392, "title" => "Pink", "price" => "199.00", "position" => 1, "inventory_policy" => "continue", "compare_at_price" => nil, "option1" => "Pink", "option2" => nil, "option3" => nil, "created_at" => "2025-07-02T11:29:59-05:00", "updated_at" => "2025-07-02T11:29:59-05:00", "taxable" => true, "barcode" => "1234_pink", "fulfillment_service" => "manual", "grams" => 567, "inventory_management" => "shopify", "requires_shipping" => true, "sku" => "IPOD2008PINK", "weight" => 1.25, "weight_unit" => "lb", "inventory_item_id" => 808950810, "inventory_quantity" => 10, "old_inventory_quantity" => 10, "presentment_prices" => [{"price" => {"amount" => "199.00", "currency_code" => "USD"}, "compare_at_price" => nil}], "admin_graphql_api_id" => "gid://shopify/ProductVariant/808950810", "image_id" => 562641783}, {"id" => 49148385, "product_id" => 632910392, "title" => "Red", "price" => "199.00", "position" => 2, "inventory_policy" => "continue", "compare_at_price" => nil, "option1" => "Red", "option2" => nil, "option3" => nil, "created_at" => "2025-07-02T11:29:59-05:00", "updated_at" => "2025-07-02T11:29:59-05:00", "taxable" => true, "barcode" => "1234_red", "fulfillment_service" => "manual", "grams" => 567, "inventory_management" => "shopify", "requires_shipping" => true, "sku" => "IPOD2008RED", "weight" => 1.25, "weight_unit" => "lb", "inventory_item_id" => 49148385, "inventory_quantity" => 20, "old_inventory_quantity" => 20, "presentment_prices" => [{"price" => {"amount" => "199.00", "currency_code" => "USD"}, "compare_at_price" => nil}], "admin_graphql_api_id" => "gid://shopify/ProductVariant/49148385", "image_id" => nil}, {"id" => 39072856, "product_id" => 632910392, "title" => "Green", "price" => "199.00", "position" => 3, "inventory_policy" => "continue", "compare_at_price" => nil, "option1" => "Green", "option2" => nil, "option3" => nil, "created_at" => "2025-07-02T11:29:59-05:00", "updated_at" => "2025-07-02T11:29:59-05:00", "taxable" => true, "barcode" => "1234_green", "fulfillment_service" => "manual", "grams" => 567, "inventory_management" => "shopify", "requires_shipping" => true, "sku" => "IPOD2008GREEN", "weight" => 1.25, "weight_unit" => "lb", "inventory_item_id" => 39072856, "inventory_quantity" => 30, "old_inventory_quantity" => 30, "presentment_prices" => [{"price" => {"amount" => "199.00", "currency_code" => "USD"}, "compare_at_price" => nil}], "admin_graphql_api_id" => "gid://shopify/ProductVariant/39072856", "image_id" => nil}, {"id" => 457924702, "product_id" => 632910392, "title" => "Black", "price" => "199.00", "position" => 4, "inventory_policy" => "continue", "compare_at_price" => nil, "option1" => "Black", "option2" => nil, "option3" => nil, "created_at" => "2025-07-02T11:29:59-05:00", "updated_at" => "2025-07-02T11:29:59-05:00", "taxable" => true, "barcode" => "1234_black", "fulfillment_service" => "manual", "grams" => 567, "inventory_management" => "shopify", "requires_shipping" => true, "sku" => "IPOD2008BLACK", "weight" => 1.25, "weight_unit" => "lb", "inventory_item_id" => 457924702, "inventory_quantity" => 40, "old_inventory_quantity" => 40, "presentment_prices" => [{"price" => {"amount" => "199.00", "currency_code" => "USD"}, "compare_at_price" => nil}], "admin_graphql_api_id" => "gid://shopify/ProductVariant/457924702", "image_id" => nil}], "options" => [{"id" => 594680422, "product_id" => 632910392, "name" => "Color", "position" => 1, "values" => ["Pink", "Red", "Green", "Black"]}], "images" => [{"id" => 850703190, "alt" => nil, "position" => 1, "product_id" => 632910392, "created_at" => "2025-07-02T11:29:59-05:00", "updated_at" => "2025-07-02T11:29:59-05:00", "admin_graphql_api_id" => "gid://shopify/MediaImage/498048120", "width" => 123, "height" => 456, "src" => "https://cdn.shopify.com/s/files/1/0005/4838/0009/products/ipod-nano.png?v=1735835399", "variant_ids" => []}, {"id" => 562641783, "alt" => nil, "position" => 2, "product_id" => 632910392, "created_at" => "2025-07-02T11:29:59-05:00", "updated_at" => "2025-07-02T11:29:59-05:00", "admin_graphql_api_id" => "gid://shopify/MediaImage/1071517486", "width" => 123, "height" => 456, "src" => "https://cdn.shopify.com/s/files/1/0005/4838/0009/products/ipod-nano-2.png?v=1735835399", "variant_ids" => [808950810]}, {"id" => 378407906, "alt" => nil, "position" => 3, "product_id" => 632910392, "created_at" => "2025-07-02T11:29:59-05:00", "updated_at" => "2025-07-02T11:29:59-05:00", "admin_graphql_api_id" => "gid://shopify/MediaImage/220090436", "width" => 123, "height" => 456, "src" => "https://cdn.shopify.com/s/files/1/0005/4838/0009/products/ipod-nano.png?v=1735835399", "variant_ids" => []}], "image" => {"id" => 850703190, "alt" => nil, "position" => 1, "product_id" => 632910392, "created_at" => "2025-07-02T11:29:59-05:00", "updated_at" => "2025-07-02T11:29:59-05:00", "admin_graphql_api_id" => "gid://shopify/MediaImage/498048120", "width" => 123, "height" => 456, "src" => "https://cdn.shopify.com/s/files/1/0005/4838/0009/products/ipod-nano.png?v=1735835399", "variant_ids" => []}}}), headers: {})

    response = product = ShopifyAPI::Product.new
    product.id = 632910392
    product.status = "draft"
    product.save

    assert_requested(:put, "https://test-shop.myshopify.io/admin/api/2025-07/products/632910392.json")

    response = response.first if response.respond_to?(:first)

    # Assert attributes are correctly typed preventing Sorbet errors downstream
    if response.respond_to?(:original_state)
      response&.original_state&.each do |key, value|
        begin
          response.send(key)
        rescue TypeError => error
          fail TypeError.new("#{self.class}##{key} is mistyped: #{error.message}")
        end
        response.send(key)
      end
    end
  end

  sig do
    void
  end
  def test_21()
    stub_request(:put, "https://test-shop.myshopify.io/admin/api/2025-07/products/632910392.json")
      .with(
        headers: {"X-Shopify-Access-Token"=>"this_is_a_test_token", "Accept"=>"application/json", "Content-Type"=>"application/json"},
        body: { "product" => hash_including({"tags" => "Barnes & Noble, John's Fav"}) }
      )
      .to_return(status: 200, body: JSON.generate({"product" => {"id" => 632910392, "title" => "IPod Nano - 8GB", "body_html" => "<p>It's the small iPod with one very big idea: Video. Now the world's most popular music player, available in 4GB and 8GB models, lets you enjoy TV shows, movies, video podcasts, and more. The larger, brighter display means amazing picture quality. In six eye-catching colors, iPod nano is stunning all around. And with models starting at just $149, little speaks volumes.</p>", "vendor" => "Apple", "product_type" => "Cult Products", "created_at" => "2025-07-02T11:29:59-05:00", "handle" => "ipod-nano", "updated_at" => "2025-07-02T11:36:13-05:00", "published_at" => "2007-12-31T19:00:00-05:00", "template_suffix" => nil, "published_scope" => "web", "tags" => "Barnes & Noble, John's Fav", "status" => "active", "admin_graphql_api_id" => "gid://shopify/Product/632910392", "variants" => [{"id" => 808950810, "product_id" => 632910392, "title" => "Pink", "price" => "199.00", "position" => 1, "inventory_policy" => "continue", "compare_at_price" => nil, "option1" => "Pink", "option2" => nil, "option3" => nil, "created_at" => "2025-07-02T11:29:59-05:00", "updated_at" => "2025-07-02T11:29:59-05:00", "taxable" => true, "barcode" => "1234_pink", "fulfillment_service" => "manual", "grams" => 567, "inventory_management" => "shopify", "requires_shipping" => true, "sku" => "IPOD2008PINK", "weight" => 1.25, "weight_unit" => "lb", "inventory_item_id" => 808950810, "inventory_quantity" => 10, "old_inventory_quantity" => 10, "presentment_prices" => [{"price" => {"amount" => "199.00", "currency_code" => "USD"}, "compare_at_price" => nil}], "admin_graphql_api_id" => "gid://shopify/ProductVariant/808950810", "image_id" => 562641783}, {"id" => 49148385, "product_id" => 632910392, "title" => "Red", "price" => "199.00", "position" => 2, "inventory_policy" => "continue", "compare_at_price" => nil, "option1" => "Red", "option2" => nil, "option3" => nil, "created_at" => "2025-07-02T11:29:59-05:00", "updated_at" => "2025-07-02T11:29:59-05:00", "taxable" => true, "barcode" => "1234_red", "fulfillment_service" => "manual", "grams" => 567, "inventory_management" => "shopify", "requires_shipping" => true, "sku" => "IPOD2008RED", "weight" => 1.25, "weight_unit" => "lb", "inventory_item_id" => 49148385, "inventory_quantity" => 20, "old_inventory_quantity" => 20, "presentment_prices" => [{"price" => {"amount" => "199.00", "currency_code" => "USD"}, "compare_at_price" => nil}], "admin_graphql_api_id" => "gid://shopify/ProductVariant/49148385", "image_id" => nil}, {"id" => 39072856, "product_id" => 632910392, "title" => "Green", "price" => "199.00", "position" => 3, "inventory_policy" => "continue", "compare_at_price" => nil, "option1" => "Green", "option2" => nil, "option3" => nil, "created_at" => "2025-07-02T11:29:59-05:00", "updated_at" => "2025-07-02T11:29:59-05:00", "taxable" => true, "barcode" => "1234_green", "fulfillment_service" => "manual", "grams" => 567, "inventory_management" => "shopify", "requires_shipping" => true, "sku" => "IPOD2008GREEN", "weight" => 1.25, "weight_unit" => "lb", "inventory_item_id" => 39072856, "inventory_quantity" => 30, "old_inventory_quantity" => 30, "presentment_prices" => [{"price" => {"amount" => "199.00", "currency_code" => "USD"}, "compare_at_price" => nil}], "admin_graphql_api_id" => "gid://shopify/ProductVariant/39072856", "image_id" => nil}, {"id" => 457924702, "product_id" => 632910392, "title" => "Black", "price" => "199.00", "position" => 4, "inventory_policy" => "continue", "compare_at_price" => nil, "option1" => "Black", "option2" => nil, "option3" => nil, "created_at" => "2025-07-02T11:29:59-05:00", "updated_at" => "2025-07-02T11:29:59-05:00", "taxable" => true, "barcode" => "1234_black", "fulfillment_service" => "manual", "grams" => 567, "inventory_management" => "shopify", "requires_shipping" => true, "sku" => "IPOD2008BLACK", "weight" => 1.25, "weight_unit" => "lb", "inventory_item_id" => 457924702, "inventory_quantity" => 40, "old_inventory_quantity" => 40, "presentment_prices" => [{"price" => {"amount" => "199.00", "currency_code" => "USD"}, "compare_at_price" => nil}], "admin_graphql_api_id" => "gid://shopify/ProductVariant/457924702", "image_id" => nil}], "options" => [{"id" => 594680422, "product_id" => 632910392, "name" => "Color", "position" => 1, "values" => ["Pink", "Red", "Green", "Black"]}], "images" => [{"id" => 850703190, "alt" => nil, "position" => 1, "product_id" => 632910392, "created_at" => "2025-07-02T11:29:59-05:00", "updated_at" => "2025-07-02T11:29:59-05:00", "admin_graphql_api_id" => "gid://shopify/MediaImage/498048120", "width" => 123, "height" => 456, "src" => "https://cdn.shopify.com/s/files/1/0005/4838/0009/products/ipod-nano.png?v=1735835399", "variant_ids" => []}, {"id" => 562641783, "alt" => nil, "position" => 2, "product_id" => 632910392, "created_at" => "2025-07-02T11:29:59-05:00", "updated_at" => "2025-07-02T11:29:59-05:00", "admin_graphql_api_id" => "gid://shopify/MediaImage/1071517486", "width" => 123, "height" => 456, "src" => "https://cdn.shopify.com/s/files/1/0005/4838/0009/products/ipod-nano-2.png?v=1735835399", "variant_ids" => [808950810]}, {"id" => 378407906, "alt" => nil, "position" => 3, "product_id" => 632910392, "created_at" => "2025-07-02T11:29:59-05:00", "updated_at" => "2025-07-02T11:29:59-05:00", "admin_graphql_api_id" => "gid://shopify/MediaImage/220090436", "width" => 123, "height" => 456, "src" => "https://cdn.shopify.com/s/files/1/0005/4838/0009/products/ipod-nano.png?v=1735835399", "variant_ids" => []}], "image" => {"id" => 850703190, "alt" => nil, "position" => 1, "product_id" => 632910392, "created_at" => "2025-07-02T11:29:59-05:00", "updated_at" => "2025-07-02T11:29:59-05:00", "admin_graphql_api_id" => "gid://shopify/MediaImage/498048120", "width" => 123, "height" => 456, "src" => "https://cdn.shopify.com/s/files/1/0005/4838/0009/products/ipod-nano.png?v=1735835399", "variant_ids" => []}}}), headers: {})

    response = product = ShopifyAPI::Product.new
    product.id = 632910392
    product.tags = "Barnes & Noble, John's Fav"
    product.save

    assert_requested(:put, "https://test-shop.myshopify.io/admin/api/2025-07/products/632910392.json")

    response = response.first if response.respond_to?(:first)

    # Assert attributes are correctly typed preventing Sorbet errors downstream
    if response.respond_to?(:original_state)
      response&.original_state&.each do |key, value|
        begin
          response.send(key)
        rescue TypeError => error
          fail TypeError.new("#{self.class}##{key} is mistyped: #{error.message}")
        end
        response.send(key)
      end
    end
  end

  sig do
    void
  end
  def test_22()
    stub_request(:put, "https://test-shop.myshopify.io/admin/api/2025-07/products/632910392.json")
      .with(
        headers: {"X-Shopify-Access-Token"=>"this_is_a_test_token", "Accept"=>"application/json", "Content-Type"=>"application/json"},
        body: { "product" => hash_including({"title" => "New product title"}) }
      )
      .to_return(status: 200, body: JSON.generate({"product" => {"id" => 632910392, "title" => "New product title", "body_html" => "<p>It's the small iPod with one very big idea: Video. Now the world's most popular music player, available in 4GB and 8GB models, lets you enjoy TV shows, movies, video podcasts, and more. The larger, brighter display means amazing picture quality. In six eye-catching colors, iPod nano is stunning all around. And with models starting at just $149, little speaks volumes.</p>", "vendor" => "Apple", "product_type" => "Cult Products", "created_at" => "2025-07-02T11:29:59-05:00", "handle" => "ipod-nano", "updated_at" => "2025-07-02T11:35:46-05:00", "published_at" => "2007-12-31T19:00:00-05:00", "template_suffix" => nil, "published_scope" => "web", "tags" => "Emotive, Flash Memory, MP3, Music", "status" => "active", "admin_graphql_api_id" => "gid://shopify/Product/632910392", "variants" => [{"id" => 808950810, "product_id" => 632910392, "title" => "Pink", "price" => "199.00", "position" => 1, "inventory_policy" => "continue", "compare_at_price" => nil, "option1" => "Pink", "option2" => nil, "option3" => nil, "created_at" => "2025-07-02T11:29:59-05:00", "updated_at" => "2025-07-02T11:29:59-05:00", "taxable" => true, "barcode" => "1234_pink", "fulfillment_service" => "manual", "grams" => 567, "inventory_management" => "shopify", "requires_shipping" => true, "sku" => "IPOD2008PINK", "weight" => 1.25, "weight_unit" => "lb", "inventory_item_id" => 808950810, "inventory_quantity" => 10, "old_inventory_quantity" => 10, "presentment_prices" => [{"price" => {"amount" => "199.00", "currency_code" => "USD"}, "compare_at_price" => nil}], "admin_graphql_api_id" => "gid://shopify/ProductVariant/808950810", "image_id" => 562641783}, {"id" => 49148385, "product_id" => 632910392, "title" => "Red", "price" => "199.00", "position" => 2, "inventory_policy" => "continue", "compare_at_price" => nil, "option1" => "Red", "option2" => nil, "option3" => nil, "created_at" => "2025-07-02T11:29:59-05:00", "updated_at" => "2025-07-02T11:29:59-05:00", "taxable" => true, "barcode" => "1234_red", "fulfillment_service" => "manual", "grams" => 567, "inventory_management" => "shopify", "requires_shipping" => true, "sku" => "IPOD2008RED", "weight" => 1.25, "weight_unit" => "lb", "inventory_item_id" => 49148385, "inventory_quantity" => 20, "old_inventory_quantity" => 20, "presentment_prices" => [{"price" => {"amount" => "199.00", "currency_code" => "USD"}, "compare_at_price" => nil}], "admin_graphql_api_id" => "gid://shopify/ProductVariant/49148385", "image_id" => nil}, {"id" => 39072856, "product_id" => 632910392, "title" => "Green", "price" => "199.00", "position" => 3, "inventory_policy" => "continue", "compare_at_price" => nil, "option1" => "Green", "option2" => nil, "option3" => nil, "created_at" => "2025-07-02T11:29:59-05:00", "updated_at" => "2025-07-02T11:29:59-05:00", "taxable" => true, "barcode" => "1234_green", "fulfillment_service" => "manual", "grams" => 567, "inventory_management" => "shopify", "requires_shipping" => true, "sku" => "IPOD2008GREEN", "weight" => 1.25, "weight_unit" => "lb", "inventory_item_id" => 39072856, "inventory_quantity" => 30, "old_inventory_quantity" => 30, "presentment_prices" => [{"price" => {"amount" => "199.00", "currency_code" => "USD"}, "compare_at_price" => nil}], "admin_graphql_api_id" => "gid://shopify/ProductVariant/39072856", "image_id" => nil}, {"id" => 457924702, "product_id" => 632910392, "title" => "Black", "price" => "199.00", "position" => 4, "inventory_policy" => "continue", "compare_at_price" => nil, "option1" => "Black", "option2" => nil, "option3" => nil, "created_at" => "2025-07-02T11:29:59-05:00", "updated_at" => "2025-07-02T11:29:59-05:00", "taxable" => true, "barcode" => "1234_black", "fulfillment_service" => "manual", "grams" => 567, "inventory_management" => "shopify", "requires_shipping" => true, "sku" => "IPOD2008BLACK", "weight" => 1.25, "weight_unit" => "lb", "inventory_item_id" => 457924702, "inventory_quantity" => 40, "old_inventory_quantity" => 40, "presentment_prices" => [{"price" => {"amount" => "199.00", "currency_code" => "USD"}, "compare_at_price" => nil}], "admin_graphql_api_id" => "gid://shopify/ProductVariant/457924702", "image_id" => nil}], "options" => [{"id" => 594680422, "product_id" => 632910392, "name" => "Color", "position" => 1, "values" => ["Pink", "Red", "Green", "Black"]}], "images" => [{"id" => 850703190, "alt" => nil, "position" => 1, "product_id" => 632910392, "created_at" => "2025-07-02T11:29:59-05:00", "updated_at" => "2025-07-02T11:29:59-05:00", "admin_graphql_api_id" => "gid://shopify/MediaImage/498048120", "width" => 123, "height" => 456, "src" => "https://cdn.shopify.com/s/files/1/0005/4838/0009/products/ipod-nano.png?v=1735835399", "variant_ids" => []}, {"id" => 562641783, "alt" => nil, "position" => 2, "product_id" => 632910392, "created_at" => "2025-07-02T11:29:59-05:00", "updated_at" => "2025-07-02T11:29:59-05:00", "admin_graphql_api_id" => "gid://shopify/MediaImage/1071517486", "width" => 123, "height" => 456, "src" => "https://cdn.shopify.com/s/files/1/0005/4838/0009/products/ipod-nano-2.png?v=1735835399", "variant_ids" => [808950810]}, {"id" => 378407906, "alt" => nil, "position" => 3, "product_id" => 632910392, "created_at" => "2025-07-02T11:29:59-05:00", "updated_at" => "2025-07-02T11:29:59-05:00", "admin_graphql_api_id" => "gid://shopify/MediaImage/220090436", "width" => 123, "height" => 456, "src" => "https://cdn.shopify.com/s/files/1/0005/4838/0009/products/ipod-nano.png?v=1735835399", "variant_ids" => []}], "image" => {"id" => 850703190, "alt" => nil, "position" => 1, "product_id" => 632910392, "created_at" => "2025-07-02T11:29:59-05:00", "updated_at" => "2025-07-02T11:29:59-05:00", "admin_graphql_api_id" => "gid://shopify/MediaImage/498048120", "width" => 123, "height" => 456, "src" => "https://cdn.shopify.com/s/files/1/0005/4838/0009/products/ipod-nano.png?v=1735835399", "variant_ids" => []}}}), headers: {})

    response = product = ShopifyAPI::Product.new
    product.id = 632910392
    product.title = "New product title"
    product.save

    assert_requested(:put, "https://test-shop.myshopify.io/admin/api/2025-07/products/632910392.json")

    response = response.first if response.respond_to?(:first)

    # Assert attributes are correctly typed preventing Sorbet errors downstream
    if response.respond_to?(:original_state)
      response&.original_state&.each do |key, value|
        begin
          response.send(key)
        rescue TypeError => error
          fail TypeError.new("#{self.class}##{key} is mistyped: #{error.message}")
        end
        response.send(key)
      end
    end
  end

  sig do
    void
  end
  def test_23()
    stub_request(:delete, "https://test-shop.myshopify.io/admin/api/2025-07/products/632910392.json")
      .with(
        headers: {"X-Shopify-Access-Token"=>"this_is_a_test_token", "Accept"=>"application/json"},
        body: {}
      )
      .to_return(status: 200, body: JSON.generate({}), headers: {})

    response = ShopifyAPI::Product.delete(
      id: 632910392,
    )

    assert_requested(:delete, "https://test-shop.myshopify.io/admin/api/2025-07/products/632910392.json")

    response = response.first if response.respond_to?(:first)

    # Assert attributes are correctly typed preventing Sorbet errors downstream
    if response.respond_to?(:original_state)
      response&.original_state&.each do |key, value|
        begin
          response.send(key)
        rescue TypeError => error
          fail TypeError.new("#{self.class}##{key} is mistyped: #{error.message}")
        end
        response.send(key)
      end
    end
  end

  sig do
    void
  end
  def test_24()
    stub_request(:post, "https://test-shop.myshopify.io/admin/api/2025-07/products.json")
      .with(
        headers: {"X-Shopify-Access-Token"=>"this_is_a_test_token", "Accept"=>"application/json", "Content-Type"=>"application/json"},
        body: { "product" => hash_including({"title" => "Burton Custom Freestyle 151", "body_html" => "<strong>Good snowboard!</strong>", "vendor" => "Burton", "product_type" => "Snowboard", "status" => "draft"}) }
      )
      .to_return(status: 200, body: JSON.generate({"product" => {"id" => 1072481050, "title" => "Burton Custom Freestyle 151", "body_html" => "<strong>Good snowboard!</strong>", "vendor" => "Burton", "product_type" => "Snowboard", "created_at" => "2025-07-02T11:36:28-05:00", "handle" => "burton-custom-freestyle-151", "updated_at" => "2025-07-02T11:36:28-05:00", "published_at" => nil, "template_suffix" => nil, "published_scope" => "web", "tags" => "", "status" => "draft", "admin_graphql_api_id" => "gid://shopify/Product/1072481050", "variants" => [{"id" => 1070325028, "product_id" => 1072481050, "title" => "Default Title", "price" => "0.00", "position" => 1, "inventory_policy" => "deny", "compare_at_price" => nil, "option1" => "Default Title", "option2" => nil, "option3" => nil, "created_at" => "2025-07-02T11:36:28-05:00", "updated_at" => "2025-07-02T11:36:28-05:00", "taxable" => true, "barcode" => nil, "fulfillment_service" => "manual", "grams" => 0, "inventory_management" => nil, "requires_shipping" => true, "sku" => "", "weight" => 0.0, "weight_unit" => "lb", "inventory_item_id" => 1070325028, "inventory_quantity" => 0, "old_inventory_quantity" => 0, "presentment_prices" => [{"price" => {"amount" => "0.00", "currency_code" => "USD"}, "compare_at_price" => nil}], "admin_graphql_api_id" => "gid://shopify/ProductVariant/1070325028", "image_id" => nil}], "options" => [{"id" => 1064576492, "product_id" => 1072481050, "name" => "Title", "position" => 1, "values" => ["Default Title"]}], "images" => [], "image" => nil}}), headers: {})

    response = product = ShopifyAPI::Product.new
    product.title = "Burton Custom Freestyle 151"
    product.body_html = "<strong>Good snowboard!</strong>"
    product.vendor = "Burton"
    product.product_type = "Snowboard"
    product.status = "draft"
    product.save

    assert_requested(:post, "https://test-shop.myshopify.io/admin/api/2025-07/products.json")

    response = response.first if response.respond_to?(:first)

    # Assert attributes are correctly typed preventing Sorbet errors downstream
    if response.respond_to?(:original_state)
      response&.original_state&.each do |key, value|
        begin
          response.send(key)
        rescue TypeError => error
          fail TypeError.new("#{self.class}##{key} is mistyped: #{error.message}")
        end
        response.send(key)
      end
    end
  end

  sig do
    void
  end
  def test_25()
    stub_request(:post, "https://test-shop.myshopify.io/admin/api/2025-07/products.json")
      .with(
        headers: {"X-Shopify-Access-Token"=>"this_is_a_test_token", "Accept"=>"application/json", "Content-Type"=>"application/json"},
        body: { "product" => hash_including({"title" => "Burton Custom Freestyle 151", "body_html" => "<strong>Good snowboard!</strong>", "vendor" => "Burton", "product_type" => "Snowboard", "variants" => [{"option1" => "First", "price" => "10.00", "sku" => "123"}, {"option1" => "Second", "price" => "20.00", "sku" => "123"}]}) }
      )
      .to_return(status: 200, body: JSON.generate({"product" => {"id" => 1072481048, "title" => "Burton Custom Freestyle 151", "body_html" => "<strong>Good snowboard!</strong>", "vendor" => "Burton", "product_type" => "Snowboard", "created_at" => "2025-07-02T11:36:27-05:00", "handle" => "burton-custom-freestyle-151", "updated_at" => "2025-07-02T11:36:27-05:00", "published_at" => "2025-07-02T11:36:27-05:00", "template_suffix" => nil, "published_scope" => "global", "tags" => "", "status" => "active", "admin_graphql_api_id" => "gid://shopify/Product/1072481048", "variants" => [{"id" => 1070325025, "product_id" => 1072481048, "title" => "First", "price" => "10.00", "position" => 1, "inventory_policy" => "deny", "compare_at_price" => nil, "option1" => "First", "option2" => nil, "option3" => nil, "created_at" => "2025-07-02T11:36:27-05:00", "updated_at" => "2025-07-02T11:36:27-05:00", "taxable" => true, "barcode" => nil, "fulfillment_service" => "manual", "grams" => 0, "inventory_management" => nil, "requires_shipping" => true, "sku" => "123", "weight" => 0.0, "weight_unit" => "lb", "inventory_item_id" => 1070325025, "inventory_quantity" => 0, "old_inventory_quantity" => 0, "presentment_prices" => [{"price" => {"amount" => "10.00", "currency_code" => "USD"}, "compare_at_price" => nil}], "admin_graphql_api_id" => "gid://shopify/ProductVariant/1070325025", "image_id" => nil}, {"id" => 1070325026, "product_id" => 1072481048, "title" => "Second", "price" => "20.00", "position" => 2, "inventory_policy" => "deny", "compare_at_price" => nil, "option1" => "Second", "option2" => nil, "option3" => nil, "created_at" => "2025-07-02T11:36:27-05:00", "updated_at" => "2025-07-02T11:36:27-05:00", "taxable" => true, "barcode" => nil, "fulfillment_service" => "manual", "grams" => 0, "inventory_management" => nil, "requires_shipping" => true, "sku" => "123", "weight" => 0.0, "weight_unit" => "lb", "inventory_item_id" => 1070325026, "inventory_quantity" => 0, "old_inventory_quantity" => 0, "presentment_prices" => [{"price" => {"amount" => "20.00", "currency_code" => "USD"}, "compare_at_price" => nil}], "admin_graphql_api_id" => "gid://shopify/ProductVariant/1070325026", "image_id" => nil}], "options" => [{"id" => 1064576490, "product_id" => 1072481048, "name" => "Title", "position" => 1, "values" => ["First", "Second"]}], "images" => [], "image" => nil}}), headers: {})

    response = product = ShopifyAPI::Product.new
    product.title = "Burton Custom Freestyle 151"
    product.body_html = "<strong>Good snowboard!</strong>"
    product.vendor = "Burton"
    product.product_type = "Snowboard"
    product.variants = [
      {
        "option1" => "First",
        "price" => "10.00",
        "sku" => "123"
      },
      {
        "option1" => "Second",
        "price" => "20.00",
        "sku" => "123"
      }
    ]
    product.save

    assert_requested(:post, "https://test-shop.myshopify.io/admin/api/2025-07/products.json")

    response = response.first if response.respond_to?(:first)

    # Assert attributes are correctly typed preventing Sorbet errors downstream
    if response.respond_to?(:original_state)
      response&.original_state&.each do |key, value|
        begin
          response.send(key)
        rescue TypeError => error
          fail TypeError.new("#{self.class}##{key} is mistyped: #{error.message}")
        end
        response.send(key)
      end
    end
  end

  sig do
    void
  end
  def test_26()
    stub_request(:post, "https://test-shop.myshopify.io/admin/api/2025-07/products.json")
      .with(
        headers: {"X-Shopify-Access-Token"=>"this_is_a_test_token", "Accept"=>"application/json", "Content-Type"=>"application/json"},
        body: { "product" => hash_including({"title" => "Burton Custom Freestyle 151", "body_html" => "<strong>Good snowboard!</strong>", "vendor" => "Burton", "product_type" => "Snowboard", "variants" => [{"option1" => "Blue", "option2" => "155"}, {"option1" => "Black", "option2" => "159"}], "options" => [{"name" => "Color", "values" => ["Blue", "Black"]}, {"name" => "Size", "values" => ["155", "159"]}]}) }
      )
      .to_return(status: 200, body: JSON.generate({"product" => {"id" => 1072481053, "title" => "Burton Custom Freestyle 151", "body_html" => "<strong>Good snowboard!</strong>", "vendor" => "Burton", "product_type" => "Snowboard", "created_at" => "2025-07-02T11:36:39-05:00", "handle" => "burton-custom-freestyle-151", "updated_at" => "2025-07-02T11:36:39-05:00", "published_at" => "2025-07-02T11:36:39-05:00", "template_suffix" => nil, "published_scope" => "global", "tags" => "", "status" => "active", "admin_graphql_api_id" => "gid://shopify/Product/1072481053", "variants" => [{"id" => 1070325032, "product_id" => 1072481053, "title" => "Blue / 155", "price" => "0.00", "position" => 1, "inventory_policy" => "deny", "compare_at_price" => nil, "option1" => "Blue", "option2" => "155", "option3" => nil, "created_at" => "2025-07-02T11:36:39-05:00", "updated_at" => "2025-07-02T11:36:39-05:00", "taxable" => true, "barcode" => nil, "fulfillment_service" => "manual", "grams" => 0, "inventory_management" => nil, "requires_shipping" => true, "sku" => nil, "weight" => 0.0, "weight_unit" => "lb", "inventory_item_id" => 1070325032, "inventory_quantity" => 0, "old_inventory_quantity" => 0, "presentment_prices" => [{"price" => {"amount" => "0.00", "currency_code" => "USD"}, "compare_at_price" => nil}], "admin_graphql_api_id" => "gid://shopify/ProductVariant/1070325032", "image_id" => nil}, {"id" => 1070325033, "product_id" => 1072481053, "title" => "Black / 159", "price" => "0.00", "position" => 2, "inventory_policy" => "deny", "compare_at_price" => nil, "option1" => "Black", "option2" => "159", "option3" => nil, "created_at" => "2025-07-02T11:36:39-05:00", "updated_at" => "2025-07-02T11:36:39-05:00", "taxable" => true, "barcode" => nil, "fulfillment_service" => "manual", "grams" => 0, "inventory_management" => nil, "requires_shipping" => true, "sku" => nil, "weight" => 0.0, "weight_unit" => "lb", "inventory_item_id" => 1070325033, "inventory_quantity" => 0, "old_inventory_quantity" => 0, "presentment_prices" => [{"price" => {"amount" => "0.00", "currency_code" => "USD"}, "compare_at_price" => nil}], "admin_graphql_api_id" => "gid://shopify/ProductVariant/1070325033", "image_id" => nil}], "options" => [{"id" => 1064576499, "product_id" => 1072481053, "name" => "Color", "position" => 1, "values" => ["Blue", "Black"]}, {"id" => 1064576500, "product_id" => 1072481053, "name" => "Size", "position" => 2, "values" => ["155", "159"]}], "images" => [], "image" => nil}}), headers: {})

    response = product = ShopifyAPI::Product.new
    product.title = "Burton Custom Freestyle 151"
    product.body_html = "<strong>Good snowboard!</strong>"
    product.vendor = "Burton"
    product.product_type = "Snowboard"
    product.variants = [
      {
        "option1" => "Blue",
        "option2" => "155"
      },
      {
        "option1" => "Black",
        "option2" => "159"
      }
    ]
    product.options = [
      {
        "name" => "Color",
        "values" => [
          "Blue",
          "Black"
        ]
      },
      {
        "name" => "Size",
        "values" => [
          "155",
          "159"
        ]
      }
    ]
    product.save

    assert_requested(:post, "https://test-shop.myshopify.io/admin/api/2025-07/products.json")

    response = response.first if response.respond_to?(:first)

    # Assert attributes are correctly typed preventing Sorbet errors downstream
    if response.respond_to?(:original_state)
      response&.original_state&.each do |key, value|
        begin
          response.send(key)
        rescue TypeError => error
          fail TypeError.new("#{self.class}##{key} is mistyped: #{error.message}")
        end
        response.send(key)
      end
    end
  end

  sig do
    void
  end
  def test_27()
    stub_request(:post, "https://test-shop.myshopify.io/admin/api/2025-07/products.json")
      .with(
        headers: {"X-Shopify-Access-Token"=>"this_is_a_test_token", "Accept"=>"application/json", "Content-Type"=>"application/json"},
        body: { "product" => hash_including({"title" => "Burton Custom Freestyle 151", "body_html" => "<strong>Good snowboard!</strong>", "vendor" => "Burton", "product_type" => "Snowboard", "tags" => ["Barnes & Noble", "Big Air", "John's Fav"]}) }
      )
      .to_return(status: 200, body: JSON.generate({"product" => {"id" => 1072481055, "title" => "Burton Custom Freestyle 151", "body_html" => "<strong>Good snowboard!</strong>", "vendor" => "Burton", "product_type" => "Snowboard", "created_at" => "2025-07-02T11:36:46-05:00", "handle" => "burton-custom-freestyle-151", "updated_at" => "2025-07-02T11:36:46-05:00", "published_at" => "2025-07-02T11:36:46-05:00", "template_suffix" => nil, "published_scope" => "global", "tags" => "Barnes & Noble, Big Air, John's Fav", "status" => "active", "admin_graphql_api_id" => "gid://shopify/Product/1072481055", "variants" => [{"id" => 1070325035, "product_id" => 1072481055, "title" => "Default Title", "price" => "0.00", "position" => 1, "inventory_policy" => "deny", "compare_at_price" => nil, "option1" => "Default Title", "option2" => nil, "option3" => nil, "created_at" => "2025-07-02T11:36:46-05:00", "updated_at" => "2025-07-02T11:36:46-05:00", "taxable" => true, "barcode" => nil, "fulfillment_service" => "manual", "grams" => 0, "inventory_management" => nil, "requires_shipping" => true, "sku" => "", "weight" => 0.0, "weight_unit" => "lb", "inventory_item_id" => 1070325035, "inventory_quantity" => 0, "old_inventory_quantity" => 0, "presentment_prices" => [{"price" => {"amount" => "0.00", "currency_code" => "USD"}, "compare_at_price" => nil}], "admin_graphql_api_id" => "gid://shopify/ProductVariant/1070325035", "image_id" => nil}], "options" => [{"id" => 1064576504, "product_id" => 1072481055, "name" => "Title", "position" => 1, "values" => ["Default Title"]}], "images" => [], "image" => nil}}), headers: {})

    response = product = ShopifyAPI::Product.new
    product.title = "Burton Custom Freestyle 151"
    product.body_html = "<strong>Good snowboard!</strong>"
    product.vendor = "Burton"
    product.product_type = "Snowboard"
    product.tags = [
      "Barnes & Noble",
      "Big Air",
      "John's Fav"
    ]
    product.save

    assert_requested(:post, "https://test-shop.myshopify.io/admin/api/2025-07/products.json")

    response = response.first if response.respond_to?(:first)

    # Assert attributes are correctly typed preventing Sorbet errors downstream
    if response.respond_to?(:original_state)
      response&.original_state&.each do |key, value|
        begin
          response.send(key)
        rescue TypeError => error
          fail TypeError.new("#{self.class}##{key} is mistyped: #{error.message}")
        end
        response.send(key)
      end
    end
  end

  sig do
    void
  end
  def test_28()
    stub_request(:post, "https://test-shop.myshopify.io/admin/api/2025-07/products.json")
      .with(
        headers: {"X-Shopify-Access-Token"=>"this_is_a_test_token", "Accept"=>"application/json", "Content-Type"=>"application/json"},
        body: { "product" => hash_including({"title" => "Burton Custom Freestyle 151", "body_html" => "<strong>Good snowboard!</strong>", "vendor" => "Burton", "product_type" => "Snowboard", "images" => [{"src" => "http://example.com/rails_logo.gif"}]}) }
      )
      .to_return(status: 200, body: JSON.generate({"product" => {"id" => 1072481042, "title" => "Burton Custom Freestyle 151", "body_html" => "<strong>Good snowboard!</strong>", "vendor" => "Burton", "product_type" => "Snowboard", "created_at" => "2025-07-02T11:35:54-05:00", "handle" => "burton-custom-freestyle-151", "updated_at" => "2025-07-02T11:35:54-05:00", "published_at" => "2025-07-02T11:35:54-05:00", "template_suffix" => nil, "published_scope" => "global", "tags" => "", "status" => "active", "admin_graphql_api_id" => "gid://shopify/Product/1072481042", "variants" => [{"id" => 1070325019, "product_id" => 1072481042, "title" => "Default Title", "price" => "0.00", "position" => 1, "inventory_policy" => "deny", "compare_at_price" => nil, "option1" => "Default Title", "option2" => nil, "option3" => nil, "created_at" => "2025-07-02T11:35:54-05:00", "updated_at" => "2025-07-02T11:35:54-05:00", "taxable" => true, "barcode" => nil, "fulfillment_service" => "manual", "grams" => 0, "inventory_management" => nil, "requires_shipping" => true, "sku" => "", "weight" => 0.0, "weight_unit" => "lb", "inventory_item_id" => 1070325019, "inventory_quantity" => 0, "old_inventory_quantity" => 0, "presentment_prices" => [{"price" => {"amount" => "0.00", "currency_code" => "USD"}, "compare_at_price" => nil}], "admin_graphql_api_id" => "gid://shopify/ProductVariant/1070325019", "image_id" => nil}], "options" => [{"id" => 1064576483, "product_id" => 1072481042, "name" => "Title", "position" => 1, "values" => ["Default Title"]}], "images" => [{"id" => 1001473907, "alt" => nil, "position" => 1, "product_id" => 1072481042, "created_at" => "2025-07-02T11:35:54-05:00", "updated_at" => "2025-07-02T11:35:54-05:00", "admin_graphql_api_id" => "gid://shopify/MediaImage/1072273204", "width" => 110, "height" => 140, "src" => "https://cdn.shopify.com/s/files/1/0005/4838/0009/files/rails_logo20250702-63224-bpqtol.gif?v=1735835754", "variant_ids" => []}], "image" => {"id" => 1001473907, "alt" => nil, "position" => 1, "product_id" => 1072481042, "created_at" => "2025-07-02T11:35:54-05:00", "updated_at" => "2025-07-02T11:35:54-05:00", "admin_graphql_api_id" => "gid://shopify/MediaImage/1072273204", "width" => 110, "height" => 140, "src" => "https://cdn.shopify.com/s/files/1/0005/4838/0009/files/rails_logo20250702-63224-bpqtol.gif?v=1735835754", "variant_ids" => []}}}), headers: {})

    response = product = ShopifyAPI::Product.new
    product.title = "Burton Custom Freestyle 151"
    product.body_html = "<strong>Good snowboard!</strong>"
    product.vendor = "Burton"
    product.product_type = "Snowboard"
    product.images = [
      {
        "src" => "http://example.com/rails_logo.gif"
      }
    ]
    product.save

    assert_requested(:post, "https://test-shop.myshopify.io/admin/api/2025-07/products.json")

    response = response.first if response.respond_to?(:first)

    # Assert attributes are correctly typed preventing Sorbet errors downstream
    if response.respond_to?(:original_state)
      response&.original_state&.each do |key, value|
        begin
          response.send(key)
        rescue TypeError => error
          fail TypeError.new("#{self.class}##{key} is mistyped: #{error.message}")
        end
        response.send(key)
      end
    end
  end

  sig do
    void
  end
  def test_29()
    stub_request(:post, "https://test-shop.myshopify.io/admin/api/2025-07/products.json")
      .with(
        headers: {"X-Shopify-Access-Token"=>"this_is_a_test_token", "Accept"=>"application/json", "Content-Type"=>"application/json"},
        body: { "product" => hash_including({"title" => "Burton Custom Freestyle 151", "body_html" => "<strong>Good snowboard!</strong>", "vendor" => "Burton", "product_type" => "Snowboard", "images" => [{"attachment" => "R0lGODlhAQABAIAAAAAAAAAAACH5BAEAAAAALAAAAAABAAEAAAICRAEAOw==\n"}]}) }
      )
      .to_return(status: 200, body: JSON.generate({"product" => {"id" => 1072481047, "title" => "Burton Custom Freestyle 151", "body_html" => "<strong>Good snowboard!</strong>", "vendor" => "Burton", "product_type" => "Snowboard", "created_at" => "2025-07-02T11:36:25-05:00", "handle" => "burton-custom-freestyle-151", "updated_at" => "2025-07-02T11:36:25-05:00", "published_at" => "2025-07-02T11:36:25-05:00", "template_suffix" => nil, "published_scope" => "global", "tags" => "", "status" => "active", "admin_graphql_api_id" => "gid://shopify/Product/1072481047", "variants" => [{"id" => 1070325024, "product_id" => 1072481047, "title" => "Default Title", "price" => "0.00", "position" => 1, "inventory_policy" => "deny", "compare_at_price" => nil, "option1" => "Default Title", "option2" => nil, "option3" => nil, "created_at" => "2025-07-02T11:36:25-05:00", "updated_at" => "2025-07-02T11:36:25-05:00", "taxable" => true, "barcode" => nil, "fulfillment_service" => "manual", "grams" => 0, "inventory_management" => nil, "requires_shipping" => true, "sku" => "", "weight" => 0.0, "weight_unit" => "lb", "inventory_item_id" => 1070325024, "inventory_quantity" => 0, "old_inventory_quantity" => 0, "presentment_prices" => [{"price" => {"amount" => "0.00", "currency_code" => "USD"}, "compare_at_price" => nil}], "admin_graphql_api_id" => "gid://shopify/ProductVariant/1070325024", "image_id" => nil}], "options" => [{"id" => 1064576489, "product_id" => 1072481047, "name" => "Title", "position" => 1, "values" => ["Default Title"]}], "images" => [{"id" => 1001473909, "alt" => nil, "position" => 1, "product_id" => 1072481047, "created_at" => "2025-07-02T11:36:25-05:00", "updated_at" => "2025-07-02T11:36:25-05:00", "admin_graphql_api_id" => "gid://shopify/MediaImage/1072273206", "width" => 1, "height" => 1, "src" => "https://cdn.shopify.com/s/files/1/0005/4838/0009/files/df3e567d6f16d040326c7a0ea29a4f41.gif?v=1735835785", "variant_ids" => []}], "image" => {"id" => 1001473909, "alt" => nil, "position" => 1, "product_id" => 1072481047, "created_at" => "2025-07-02T11:36:25-05:00", "updated_at" => "2025-07-02T11:36:25-05:00", "admin_graphql_api_id" => "gid://shopify/MediaImage/1072273206", "width" => 1, "height" => 1, "src" => "https://cdn.shopify.com/s/files/1/0005/4838/0009/files/df3e567d6f16d040326c7a0ea29a4f41.gif?v=1735835785", "variant_ids" => []}}}), headers: {})

    response = product = ShopifyAPI::Product.new
    product.title = "Burton Custom Freestyle 151"
    product.body_html = "<strong>Good snowboard!</strong>"
    product.vendor = "Burton"
    product.product_type = "Snowboard"
    product.images = [
      {
        "attachment" => "R0lGODlhAQABAIAAAAAAAAAAACH5BAEAAAAALAAAAAABAAEAAAICRAEAOw==\n"
      }
    ]
    product.save

    assert_requested(:post, "https://test-shop.myshopify.io/admin/api/2025-07/products.json")

    response = response.first if response.respond_to?(:first)

    # Assert attributes are correctly typed preventing Sorbet errors downstream
    if response.respond_to?(:original_state)
      response&.original_state&.each do |key, value|
        begin
          response.send(key)
        rescue TypeError => error
          fail TypeError.new("#{self.class}##{key} is mistyped: #{error.message}")
        end
        response.send(key)
      end
    end
  end

  sig do
    void
  end
  def test_30()
    stub_request(:post, "https://test-shop.myshopify.io/admin/api/2025-07/products.json")
      .with(
        headers: {"X-Shopify-Access-Token"=>"this_is_a_test_token", "Accept"=>"application/json", "Content-Type"=>"application/json"},
        body: { "product" => hash_including({"title" => "Burton Custom Freestyle 151", "body_html" => "<strong>Good snowboard!</strong>", "vendor" => "Burton", "product_type" => "Snowboard", "published" => false}) }
      )
      .to_return(status: 200, body: JSON.generate({"product" => {"id" => 1072481045, "title" => "Burton Custom Freestyle 151", "body_html" => "<strong>Good snowboard!</strong>", "vendor" => "Burton", "product_type" => "Snowboard", "created_at" => "2025-07-02T11:36:11-05:00", "handle" => "burton-custom-freestyle-151", "updated_at" => "2025-07-02T11:36:12-05:00", "published_at" => nil, "template_suffix" => nil, "published_scope" => "global", "tags" => "", "status" => "active", "admin_graphql_api_id" => "gid://shopify/Product/1072481045", "variants" => [{"id" => 1070325021, "product_id" => 1072481045, "title" => "Default Title", "price" => "0.00", "position" => 1, "inventory_policy" => "deny", "compare_at_price" => nil, "option1" => "Default Title", "option2" => nil, "option3" => nil, "created_at" => "2025-07-02T11:36:12-05:00", "updated_at" => "2025-07-02T11:36:12-05:00", "taxable" => true, "barcode" => nil, "fulfillment_service" => "manual", "grams" => 0, "inventory_management" => nil, "requires_shipping" => true, "sku" => "", "weight" => 0.0, "weight_unit" => "lb", "inventory_item_id" => 1070325021, "inventory_quantity" => 0, "old_inventory_quantity" => 0, "presentment_prices" => [{"price" => {"amount" => "0.00", "currency_code" => "USD"}, "compare_at_price" => nil}], "admin_graphql_api_id" => "gid://shopify/ProductVariant/1070325021", "image_id" => nil}], "options" => [{"id" => 1064576487, "product_id" => 1072481045, "name" => "Title", "position" => 1, "values" => ["Default Title"]}], "images" => [], "image" => nil}}), headers: {})

    response = product = ShopifyAPI::Product.new
    product.title = "Burton Custom Freestyle 151"
    product.body_html = "<strong>Good snowboard!</strong>"
    product.vendor = "Burton"
    product.product_type = "Snowboard"
    product.published = false
    product.save

    assert_requested(:post, "https://test-shop.myshopify.io/admin/api/2025-07/products.json")

    response = response.first if response.respond_to?(:first)

    # Assert attributes are correctly typed preventing Sorbet errors downstream
    if response.respond_to?(:original_state)
      response&.original_state&.each do |key, value|
        begin
          response.send(key)
        rescue TypeError => error
          fail TypeError.new("#{self.class}##{key} is mistyped: #{error.message}")
        end
        response.send(key)
      end
    end
  end

  sig do
    void
  end
  def test_31()
    stub_request(:post, "https://test-shop.myshopify.io/admin/api/2025-07/products.json")
      .with(
        headers: {"X-Shopify-Access-Token"=>"this_is_a_test_token", "Accept"=>"application/json", "Content-Type"=>"application/json"},
        body: { "product" => hash_including({"title" => "Burton Custom Freestyle 151", "body_html" => "<strong>Good snowboard!</strong>", "vendor" => "Burton", "product_type" => "Snowboard", "metafields" => [{"key" => "new", "value" => "newvalue", "type" => "single_line_text_field", "namespace" => "global"}]}) }
      )
      .to_return(status: 200, body: JSON.generate({"product" => {"id" => 1072481049, "title" => "Burton Custom Freestyle 151", "body_html" => "<strong>Good snowboard!</strong>", "vendor" => "Burton", "product_type" => "Snowboard", "created_at" => "2025-07-02T11:36:27-05:00", "handle" => "burton-custom-freestyle-151", "updated_at" => "2025-07-02T11:36:27-05:00", "published_at" => "2025-07-02T11:36:27-05:00", "template_suffix" => nil, "published_scope" => "global", "tags" => "", "status" => "active", "admin_graphql_api_id" => "gid://shopify/Product/1072481049", "variants" => [{"id" => 1070325027, "product_id" => 1072481049, "title" => "Default Title", "price" => "0.00", "position" => 1, "inventory_policy" => "deny", "compare_at_price" => nil, "option1" => "Default Title", "option2" => nil, "option3" => nil, "created_at" => "2025-07-02T11:36:27-05:00", "updated_at" => "2025-07-02T11:36:27-05:00", "taxable" => true, "barcode" => nil, "fulfillment_service" => "manual", "grams" => 0, "inventory_management" => nil, "requires_shipping" => true, "sku" => "", "weight" => 0.0, "weight_unit" => "lb", "inventory_item_id" => 1070325027, "inventory_quantity" => 0, "old_inventory_quantity" => 0, "presentment_prices" => [{"price" => {"amount" => "0.00", "currency_code" => "USD"}, "compare_at_price" => nil}], "admin_graphql_api_id" => "gid://shopify/ProductVariant/1070325027", "image_id" => nil}], "options" => [{"id" => 1064576491, "product_id" => 1072481049, "name" => "Title", "position" => 1, "values" => ["Default Title"]}], "images" => [], "image" => nil}}), headers: {})

    response = product = ShopifyAPI::Product.new
    product.title = "Burton Custom Freestyle 151"
    product.body_html = "<strong>Good snowboard!</strong>"
    product.vendor = "Burton"
    product.product_type = "Snowboard"
    product.metafields = [
      {
        "key" => "new",
        "value" => "newvalue",
        "type" => "single_line_text_field",
        "namespace" => "global"
      }
    ]
    product.save

    assert_requested(:post, "https://test-shop.myshopify.io/admin/api/2025-07/products.json")

    response = response.first if response.respond_to?(:first)

    # Assert attributes are correctly typed preventing Sorbet errors downstream
    if response.respond_to?(:original_state)
      response&.original_state&.each do |key, value|
        begin
          response.send(key)
        rescue TypeError => error
          fail TypeError.new("#{self.class}##{key} is mistyped: #{error.message}")
        end
        response.send(key)
      end
    end
  end

  sig do
    void
  end
  def test_32()
    stub_request(:post, "https://test-shop.myshopify.io/admin/api/2025-07/products.json")
      .with(
        headers: {"X-Shopify-Access-Token"=>"this_is_a_test_token", "Accept"=>"application/json", "Content-Type"=>"application/json"},
        body: { "product" => hash_including({"title" => "Burton Custom Freestyle 151", "body_html" => "<strong>Good snowboard!</strong>", "vendor" => "Burton", "product_type" => "Snowboard", "metafields_global_title_tag" => "Product SEO Title", "metafields_global_description_tag" => "Product SEO Description"}) }
      )
      .to_return(status: 200, body: JSON.generate({"product" => {"id" => 1072481058, "title" => "Burton Custom Freestyle 151", "body_html" => "<strong>Good snowboard!</strong>", "vendor" => "Burton", "product_type" => "Snowboard", "created_at" => "2025-07-02T11:36:51-05:00", "handle" => "burton-custom-freestyle-151", "updated_at" => "2025-07-02T11:36:51-05:00", "published_at" => "2025-07-02T11:36:51-05:00", "template_suffix" => nil, "published_scope" => "global", "tags" => "", "status" => "active", "admin_graphql_api_id" => "gid://shopify/Product/1072481058", "variants" => [{"id" => 1070325038, "product_id" => 1072481058, "title" => "Default Title", "price" => "0.00", "position" => 1, "inventory_policy" => "deny", "compare_at_price" => nil, "option1" => "Default Title", "option2" => nil, "option3" => nil, "created_at" => "2025-07-02T11:36:51-05:00", "updated_at" => "2025-07-02T11:36:51-05:00", "taxable" => true, "barcode" => nil, "fulfillment_service" => "manual", "grams" => 0, "inventory_management" => nil, "requires_shipping" => true, "sku" => "", "weight" => 0.0, "weight_unit" => "lb", "inventory_item_id" => 1070325038, "inventory_quantity" => 0, "old_inventory_quantity" => 0, "presentment_prices" => [{"price" => {"amount" => "0.00", "currency_code" => "USD"}, "compare_at_price" => nil}], "admin_graphql_api_id" => "gid://shopify/ProductVariant/1070325038", "image_id" => nil}], "options" => [{"id" => 1064576509, "product_id" => 1072481058, "name" => "Title", "position" => 1, "values" => ["Default Title"]}], "images" => [], "image" => nil}}), headers: {})

    response = product = ShopifyAPI::Product.new
    product.title = "Burton Custom Freestyle 151"
    product.body_html = "<strong>Good snowboard!</strong>"
    product.vendor = "Burton"
    product.product_type = "Snowboard"
    product.metafields_global_title_tag = "Product SEO Title"
    product.metafields_global_description_tag = "Product SEO Description"
    product.save

    assert_requested(:post, "https://test-shop.myshopify.io/admin/api/2025-07/products.json")

    response = response.first if response.respond_to?(:first)

    # Assert attributes are correctly typed preventing Sorbet errors downstream
    if response.respond_to?(:original_state)
      response&.original_state&.each do |key, value|
        begin
          response.send(key)
        rescue TypeError => error
          fail TypeError.new("#{self.class}##{key} is mistyped: #{error.message}")
        end
        response.send(key)
      end
    end
  end

end
