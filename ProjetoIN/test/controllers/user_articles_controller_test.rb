require 'test_helper'

class UserArticlesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_article = user_articles(:one)
  end

  test "should get index" do
    get user_articles_url
    assert_response :success
  end

  test "should get new" do
    get new_user_article_url
    assert_response :success
  end

  test "should create user_article" do
    assert_difference('UserArticle.count') do
      post user_articles_url, params: { user_article: { article_id: @user_article.article_id, user_id: @user_article.user_id } }
    end

    assert_redirected_to user_article_url(UserArticle.last)
  end

  test "should show user_article" do
    get user_article_url(@user_article)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_article_url(@user_article)
    assert_response :success
  end

  test "should update user_article" do
    patch user_article_url(@user_article), params: { user_article: { article_id: @user_article.article_id, user_id: @user_article.user_id } }
    assert_redirected_to user_article_url(@user_article)
  end

  test "should destroy user_article" do
    assert_difference('UserArticle.count', -1) do
      delete user_article_url(@user_article)
    end

    assert_redirected_to user_articles_url
  end
end
