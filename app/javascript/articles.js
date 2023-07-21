// app/assets/javascripts/articles.js

$(function() {
    $('.like-button').click(function() {
      var articleId = $(this).data('article-id');
      $.ajax({
        url: '/articles/' + articleId + '/like',
        method: 'POST',
        success: function() {
          alert('Article liked!');
        },
        error: function() {
          alert('Error liking article.');
        }
      });
    });
  });