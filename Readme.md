This is a movie review site built from [MackenzieChild's tutorial](http://mackenziechild.me/how-to-build-a-movie-review-app-in-rails-4/) in Rails 4.2.0beta4
    
Changes made to update from Rails 4.1.5 to Rails 4.2.0beta4
    
---
**app/views/layouts/_header.html.erb**
    
The form_tag no longer allows built in div's. The navbar search form around line#24
    
```text.html.erb
<div class="navbar-right navbar-form">
    <%= form_tag("/search", method: "get") do %>
    <%= text_field_tag 'search', nil, placeholder: 'Enter search term...', class: 'form-control' %>
    <%= submit_tag 'Search', name: nil, class: 'btn btn-default' %>
    <% end %>
</div>
```
    
    
---
    
**config/routes.rb**
    
I wasn't able to make searchkick work with the nested resource - I removed the 'collection do' block and added this below the resource:movie. Also moved the devise block to the bottom.
    
```ruby
match 'search', to: 'movies#search', via: :get
```
    
---
    
**config/environments/development.rb**
    
The new asset digest feature kept the raty stars from loading so I changed the config to false (around line #32).
    
```ruby
config.assets.digest = false
```
    
---