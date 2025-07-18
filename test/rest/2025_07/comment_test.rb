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

class Comment202507Test < Test::Unit::TestCase
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
    stub_request(:get, "https://test-shop.myshopify.io/admin/api/2025-07/comments.json?since_id=118373535")
      .with(
        headers: {"X-Shopify-Access-Token"=>"this_is_a_test_token", "Accept"=>"application/json"},
        body: {}
      )
      .to_return(status: 200, body: JSON.generate({"comments" => [{"id" => 653537639, "body" => "Hi author, I really _like_ what you're doing there.", "body_html" => "<p>Hi author, I really <em>like</em> what you're doing there.</p>", "author" => "Soleone", "email" => "soleone@example.net", "status" => "unapproved", "article_id" => 134645308, "blog_id" => 241253187, "created_at" => "2025-07-02T11:09:43-05:00", "updated_at" => "2025-07-02T11:09:43-05:00", "ip" => "127.0.0.1", "user_agent" => "Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_5_4; en-us) AppleWebKit/525.18 (KHTML, like Gecko) Version/3.1.2 Safari/525.20.1", "published_at" => nil}]}), headers: {})

    response = ShopifyAPI::Comment.all(
      since_id: "118373535",
    )

    assert_requested(:get, "https://test-shop.myshopify.io/admin/api/2025-07/comments.json?since_id=118373535")

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
    stub_request(:get, "https://test-shop.myshopify.io/admin/api/2025-07/comments.json?article_id=134645308&blog_id=241253187")
      .with(
        headers: {"X-Shopify-Access-Token"=>"this_is_a_test_token", "Accept"=>"application/json"},
        body: {}
      )
      .to_return(status: 200, body: JSON.generate({"comments" => [{"id" => 653537639, "body" => "Hi author, I really _like_ what you're doing there.", "body_html" => "<p>Hi author, I really <em>like</em> what you're doing there.</p>", "author" => "Soleone", "email" => "soleone@example.net", "status" => "unapproved", "article_id" => 134645308, "blog_id" => 241253187, "created_at" => "2025-07-02T11:09:43-05:00", "updated_at" => "2025-07-02T11:09:43-05:00", "ip" => "127.0.0.1", "user_agent" => "Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_5_4; en-us) AppleWebKit/525.18 (KHTML, like Gecko) Version/3.1.2 Safari/525.20.1", "published_at" => nil}, {"id" => 118373535, "body" => "Hi author, I really _like_ what you're doing there.", "body_html" => "<p>Hi author, I really <em>like</em> what you're doing there.</p>", "author" => "Soleone", "email" => "soleone@example.net", "status" => "published", "article_id" => 134645308, "blog_id" => 241253187, "created_at" => "2025-07-02T11:09:43-05:00", "updated_at" => "2025-07-02T11:09:43-05:00", "ip" => "127.0.0.1", "user_agent" => "Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_5_4; en-us) AppleWebKit/525.18 (KHTML, like Gecko) Version/3.1.2 Safari/525.20.1", "published_at" => nil}]}), headers: {})

    response = ShopifyAPI::Comment.all(
      article_id: "134645308",
      blog_id: "241253187",
    )

    assert_requested(:get, "https://test-shop.myshopify.io/admin/api/2025-07/comments.json?article_id=134645308&blog_id=241253187")

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
    stub_request(:get, "https://test-shop.myshopify.io/admin/api/2025-07/comments.json?blog_id=241253187")
      .with(
        headers: {"X-Shopify-Access-Token"=>"this_is_a_test_token", "Accept"=>"application/json"},
        body: {}
      )
      .to_return(status: 200, body: JSON.generate({"comments" => [{"id" => 653537639, "body" => "Hi author, I really _like_ what you're doing there.", "body_html" => "<p>Hi author, I really <em>like</em> what you're doing there.</p>", "author" => "Soleone", "email" => "soleone@example.net", "status" => "unapproved", "article_id" => 134645308, "blog_id" => 241253187, "created_at" => "2025-07-02T11:09:43-05:00", "updated_at" => "2025-07-02T11:09:43-05:00", "ip" => "127.0.0.1", "user_agent" => "Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_5_4; en-us) AppleWebKit/525.18 (KHTML, like Gecko) Version/3.1.2 Safari/525.20.1", "published_at" => nil}, {"id" => 118373535, "body" => "Hi author, I really _like_ what you're doing there.", "body_html" => "<p>Hi author, I really <em>like</em> what you're doing there.</p>", "author" => "Soleone", "email" => "soleone@example.net", "status" => "published", "article_id" => 134645308, "blog_id" => 241253187, "created_at" => "2025-07-02T11:09:43-05:00", "updated_at" => "2025-07-02T11:09:43-05:00", "ip" => "127.0.0.1", "user_agent" => "Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_5_4; en-us) AppleWebKit/525.18 (KHTML, like Gecko) Version/3.1.2 Safari/525.20.1", "published_at" => nil}]}), headers: {})

    response = ShopifyAPI::Comment.all(
      blog_id: "241253187",
    )

    assert_requested(:get, "https://test-shop.myshopify.io/admin/api/2025-07/comments.json?blog_id=241253187")

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
    stub_request(:get, "https://test-shop.myshopify.io/admin/api/2025-07/comments.json")
      .with(
        headers: {"X-Shopify-Access-Token"=>"this_is_a_test_token", "Accept"=>"application/json"},
        body: {}
      )
      .to_return(status: 200, body: JSON.generate({"comments" => [{"id" => 653537639, "body" => "Hi author, I really _like_ what you're doing there.", "body_html" => "<p>Hi author, I really <em>like</em> what you're doing there.</p>", "author" => "Soleone", "email" => "soleone@example.net", "status" => "unapproved", "article_id" => 134645308, "blog_id" => 241253187, "created_at" => "2025-07-02T11:09:43-05:00", "updated_at" => "2025-07-02T11:09:43-05:00", "ip" => "127.0.0.1", "user_agent" => "Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_5_4; en-us) AppleWebKit/525.18 (KHTML, like Gecko) Version/3.1.2 Safari/525.20.1", "published_at" => nil}, {"id" => 118373535, "body" => "Hi author, I really _like_ what you're doing there.", "body_html" => "<p>Hi author, I really <em>like</em> what you're doing there.</p>", "author" => "Soleone", "email" => "soleone@example.net", "status" => "published", "article_id" => 134645308, "blog_id" => 241253187, "created_at" => "2025-07-02T11:09:43-05:00", "updated_at" => "2025-07-02T11:09:43-05:00", "ip" => "127.0.0.1", "user_agent" => "Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_5_4; en-us) AppleWebKit/525.18 (KHTML, like Gecko) Version/3.1.2 Safari/525.20.1", "published_at" => nil}]}), headers: {})

    response = ShopifyAPI::Comment.all

    assert_requested(:get, "https://test-shop.myshopify.io/admin/api/2025-07/comments.json")

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
    stub_request(:get, "https://test-shop.myshopify.io/admin/api/2025-07/comments/count.json?article_id=134645308&blog_id=241253187")
      .with(
        headers: {"X-Shopify-Access-Token"=>"this_is_a_test_token", "Accept"=>"application/json"},
        body: {}
      )
      .to_return(status: 200, body: JSON.generate({"count" => 2}), headers: {})

    response = ShopifyAPI::Comment.count(
      article_id: "134645308",
      blog_id: "241253187",
    )

    assert_requested(:get, "https://test-shop.myshopify.io/admin/api/2025-07/comments/count.json?article_id=134645308&blog_id=241253187")

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
    stub_request(:get, "https://test-shop.myshopify.io/admin/api/2025-07/comments/count.json?blog_id=241253187")
      .with(
        headers: {"X-Shopify-Access-Token"=>"this_is_a_test_token", "Accept"=>"application/json"},
        body: {}
      )
      .to_return(status: 200, body: JSON.generate({"count" => 2}), headers: {})

    response = ShopifyAPI::Comment.count(
      blog_id: "241253187",
    )

    assert_requested(:get, "https://test-shop.myshopify.io/admin/api/2025-07/comments/count.json?blog_id=241253187")

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
    stub_request(:get, "https://test-shop.myshopify.io/admin/api/2025-07/comments/count.json")
      .with(
        headers: {"X-Shopify-Access-Token"=>"this_is_a_test_token", "Accept"=>"application/json"},
        body: {}
      )
      .to_return(status: 200, body: JSON.generate({"count" => 2}), headers: {})

    response = ShopifyAPI::Comment.count

    assert_requested(:get, "https://test-shop.myshopify.io/admin/api/2025-07/comments/count.json")

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
    stub_request(:get, "https://test-shop.myshopify.io/admin/api/2025-07/comments/118373535.json")
      .with(
        headers: {"X-Shopify-Access-Token"=>"this_is_a_test_token", "Accept"=>"application/json"},
        body: {}
      )
      .to_return(status: 200, body: JSON.generate({"comment" => {"id" => 118373535, "body" => "Hi author, I really _like_ what you're doing there.", "body_html" => "<p>Hi author, I really <em>like</em> what you're doing there.</p>", "author" => "Soleone", "email" => "soleone@example.net", "status" => "published", "article_id" => 134645308, "blog_id" => 241253187, "created_at" => "2025-07-02T11:09:43-05:00", "updated_at" => "2025-07-02T11:09:43-05:00", "ip" => "127.0.0.1", "user_agent" => "Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_5_4; en-us) AppleWebKit/525.18 (KHTML, like Gecko) Version/3.1.2 Safari/525.20.1", "published_at" => nil}}), headers: {})

    response = ShopifyAPI::Comment.find(
      id: 118373535,
    )

    assert_requested(:get, "https://test-shop.myshopify.io/admin/api/2025-07/comments/118373535.json")

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
    stub_request(:put, "https://test-shop.myshopify.io/admin/api/2025-07/comments/118373535.json")
      .with(
        headers: {"X-Shopify-Access-Token"=>"this_is_a_test_token", "Accept"=>"application/json", "Content-Type"=>"application/json"},
        body: { "comment" => hash_including({"body" => "You can even update through a web service.", "author" => "Your new name", "email" => "your@updated-email.com", "published_at" => "2025-07-02T16:22:10.772Z"}) }
      )
      .to_return(status: 200, body: JSON.generate({"comment" => {"author" => "Your new name", "body" => "You can even update through a web service.", "email" => "your@updated-email.com", "published_at" => "2025-07-02T11:22:10-05:00", "id" => 118373535, "body_html" => "<p>You can even update through a web service.</p>", "status" => "published", "article_id" => 134645308, "blog_id" => 241253187, "created_at" => "2025-07-02T11:09:43-05:00", "updated_at" => "2025-07-02T11:22:11-05:00", "ip" => "127.0.0.1", "user_agent" => "Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_5_4; en-us) AppleWebKit/525.18 (KHTML, like Gecko) Version/3.1.2 Safari/525.20.1"}}), headers: {})

    response = comment = ShopifyAPI::Comment.new
    comment.id = 118373535
    comment.body = "You can even update through a web service."
    comment.author = "Your new name"
    comment.email = "your@updated-email.com"
    comment.published_at = "2025-07-02T16:22:10.772Z"
    comment.save

    assert_requested(:put, "https://test-shop.myshopify.io/admin/api/2025-07/comments/118373535.json")

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
    stub_request(:post, "https://test-shop.myshopify.io/admin/api/2025-07/comments.json")
      .with(
        headers: {"X-Shopify-Access-Token"=>"this_is_a_test_token", "Accept"=>"application/json", "Content-Type"=>"application/json"},
        body: { "comment" => hash_including({"body" => "I like comments\nAnd I like posting them *RESTfully*.", "author" => "Your name", "email" => "your@email.com", "ip" => "107.20.160.121", "blog_id" => 241253187, "article_id" => 134645308}) }
      )
      .to_return(status: 200, body: JSON.generate({"comment" => {"id" => 757536351, "body" => "I like comments\nAnd I like posting them *RESTfully*.", "body_html" => "<p>I like comments<br>\nAnd I like posting them <strong>RESTfully</strong>.</p>", "author" => "Your name", "email" => "your@email.com", "status" => "pending", "article_id" => 134645308, "blog_id" => 241253187, "created_at" => "2025-07-02T11:22:08-05:00", "updated_at" => "2025-07-02T11:22:08-05:00", "ip" => "107.20.160.121", "user_agent" => nil, "published_at" => nil}}), headers: {})

    response = comment = ShopifyAPI::Comment.new
    comment.body = "I like comments\nAnd I like posting them *RESTfully*."
    comment.author = "Your name"
    comment.email = "your@email.com"
    comment.ip = "107.20.160.121"
    comment.blog_id = 241253187
    comment.article_id = 134645308
    comment.save

    assert_requested(:post, "https://test-shop.myshopify.io/admin/api/2025-07/comments.json")

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
    stub_request(:post, "https://test-shop.myshopify.io/admin/api/2025-07/comments/653537639/spam.json")
      .with(
        headers: {"X-Shopify-Access-Token"=>"this_is_a_test_token", "Accept"=>"application/json", "Content-Type"=>"application/json"},
        body: {}
      )
      .to_return(status: 200, body: JSON.generate({"published_at" => nil, "status" => "spam", "id" => 653537639, "body" => "Hi author, I really _like_ what you're doing there.", "body_html" => "<p>Hi author, I really <em>like</em> what you're doing there.</p>", "author" => "Soleone", "email" => "soleone@example.net", "article_id" => 134645308, "blog_id" => 241253187, "created_at" => "2025-07-02T11:09:43-05:00", "updated_at" => "2025-07-02T11:22:08-05:00", "ip" => "127.0.0.1", "user_agent" => "Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_5_4; en-us) AppleWebKit/525.18 (KHTML, like Gecko) Version/3.1.2 Safari/525.20.1"}), headers: {})

    response = comment = ShopifyAPI::Comment.new
    comment.id = 653537639
    comment.spam

    assert_requested(:post, "https://test-shop.myshopify.io/admin/api/2025-07/comments/653537639/spam.json")

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
    stub_request(:post, "https://test-shop.myshopify.io/admin/api/2025-07/comments/653537639/not_spam.json")
      .with(
        headers: {"X-Shopify-Access-Token"=>"this_is_a_test_token", "Accept"=>"application/json", "Content-Type"=>"application/json"},
        body: {}
      )
      .to_return(status: 200, body: JSON.generate({"published_at" => "2025-07-02T11:22:07-05:00", "status" => "published", "id" => 653537639, "body" => "Hi author, I really _like_ what you're doing there.", "body_html" => "<p>Hi author, I really <em>like</em> what you're doing there.</p>", "author" => "Soleone", "email" => "soleone@example.net", "article_id" => 134645308, "blog_id" => 241253187, "created_at" => "2025-07-02T11:09:43-05:00", "updated_at" => "2025-07-02T11:22:07-05:00", "ip" => "127.0.0.1", "user_agent" => "Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_5_4; en-us) AppleWebKit/525.18 (KHTML, like Gecko) Version/3.1.2 Safari/525.20.1"}), headers: {})

    response = comment = ShopifyAPI::Comment.new
    comment.id = 653537639
    comment.not_spam

    assert_requested(:post, "https://test-shop.myshopify.io/admin/api/2025-07/comments/653537639/not_spam.json")

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
    stub_request(:post, "https://test-shop.myshopify.io/admin/api/2025-07/comments/653537639/approve.json")
      .with(
        headers: {"X-Shopify-Access-Token"=>"this_is_a_test_token", "Accept"=>"application/json", "Content-Type"=>"application/json"},
        body: {}
      )
      .to_return(status: 200, body: JSON.generate({"published_at" => "2025-07-02T11:22:14-05:00", "status" => "published", "id" => 653537639, "body" => "Hi author, I really _like_ what you're doing there.", "body_html" => "<p>Hi author, I really <em>like</em> what you're doing there.</p>", "author" => "Soleone", "email" => "soleone@example.net", "article_id" => 134645308, "blog_id" => 241253187, "created_at" => "2025-07-02T11:09:43-05:00", "updated_at" => "2025-07-02T11:22:14-05:00", "ip" => "127.0.0.1", "user_agent" => "Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_5_4; en-us) AppleWebKit/525.18 (KHTML, like Gecko) Version/3.1.2 Safari/525.20.1"}), headers: {})

    response = comment = ShopifyAPI::Comment.new
    comment.id = 653537639
    comment.approve

    assert_requested(:post, "https://test-shop.myshopify.io/admin/api/2025-07/comments/653537639/approve.json")

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
    stub_request(:post, "https://test-shop.myshopify.io/admin/api/2025-07/comments/653537639/remove.json")
      .with(
        headers: {"X-Shopify-Access-Token"=>"this_is_a_test_token", "Accept"=>"application/json", "Content-Type"=>"application/json"},
        body: {}
      )
      .to_return(status: 200, body: JSON.generate({"published_at" => nil, "status" => "removed", "id" => 653537639, "body" => "Hi author, I really _like_ what you're doing there.", "body_html" => "<p>Hi author, I really <em>like</em> what you're doing there.</p>", "author" => "Soleone", "email" => "soleone@example.net", "article_id" => 134645308, "blog_id" => 241253187, "created_at" => "2025-07-02T11:09:43-05:00", "updated_at" => "2025-07-02T11:22:18-05:00", "ip" => "127.0.0.1", "user_agent" => "Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_5_4; en-us) AppleWebKit/525.18 (KHTML, like Gecko) Version/3.1.2 Safari/525.20.1"}), headers: {})

    response = comment = ShopifyAPI::Comment.new
    comment.id = 653537639
    comment.remove

    assert_requested(:post, "https://test-shop.myshopify.io/admin/api/2025-07/comments/653537639/remove.json")

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
    stub_request(:post, "https://test-shop.myshopify.io/admin/api/2025-07/comments/653537639/restore.json")
      .with(
        headers: {"X-Shopify-Access-Token"=>"this_is_a_test_token", "Accept"=>"application/json", "Content-Type"=>"application/json"},
        body: {}
      )
      .to_return(status: 200, body: JSON.generate({"published_at" => "2025-07-02T11:22:20-05:00", "status" => "published", "id" => 653537639, "body" => "Hi author, I really _like_ what you're doing there.", "body_html" => "<p>Hi author, I really <em>like</em> what you're doing there.</p>", "author" => "Soleone", "email" => "soleone@example.net", "article_id" => 134645308, "blog_id" => 241253187, "created_at" => "2025-07-02T11:09:43-05:00", "updated_at" => "2025-07-02T11:22:20-05:00", "ip" => "127.0.0.1", "user_agent" => "Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_5_4; en-us) AppleWebKit/525.18 (KHTML, like Gecko) Version/3.1.2 Safari/525.20.1"}), headers: {})

    response = comment = ShopifyAPI::Comment.new
    comment.id = 653537639
    comment.restore

    assert_requested(:post, "https://test-shop.myshopify.io/admin/api/2025-07/comments/653537639/restore.json")

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
