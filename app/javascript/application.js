// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

document.getElementById("artist-toggle").addEventListener("click", function() {
  const filter = document.getElementById("artist-filter");
  filter.style.display = filter.style.display === "none" ? "block" : "none";
});
