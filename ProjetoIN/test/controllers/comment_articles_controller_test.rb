require 'test_helper'

class CommentArticlesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @comment_article = comment_articles(:one)
  end

  test "should get index" do
    get comment_articles_url
    assert_response :success
  end

  test "should get new" do
    get new_comment_article_url
    assert_response :success
  end

  test "should create comment_article" do
    assert_difference('CommentArticle.count') do
      post comment_articles_url, params: { comment_article: { article_id: @comment_article.article_id, comment_id: @comment_article.comment_id } }
    end

    assert_redirected_to comment_article_url(CommentArticle.last)
  end

  test "should show comment_article" do
    get comment_article_url(@comment_article)
    assert_response :success
  end

  test "should get edit" do
    get edit_comment_article_url(@comment_article)
    assert_response :success
  end

  test "should update comment_article" do
    patch comment_article_url(@comment_article), params: { comment_article: { article_id: @comment_article.article_id, comment_id: @comment_article.comment_id } }
    assert_redirected_to comment_article_url(@comment_article)
  end

  test "should destroy comment_article" do
    assert_difference('CommentArticle.count', -1) do
      delete comment_article_url(@comment_article)
    end

    assert_redirected_to comment_articles_url
  end
end
