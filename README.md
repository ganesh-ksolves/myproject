# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...



<% @article = user.article.first %>
<div id="send_like_for_<%= @article.id %>">
     <% if @article.is_liked?(@article, current_user)%>
        <%= render 'unlike'%>
     <%else%>
        <%= render 'like'%>
     <%end%>
