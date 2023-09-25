// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import "channels"


$(document).on('ajax:success', function(event) {
  $('#cart').html(event.detail[2].responseText);
});
