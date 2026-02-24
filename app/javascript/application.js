// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

document.addEventListener("turbo:load", () => {
  const toggle = document.getElementById("artist-toggle");
  const filter = document.getElementById("artist-filter");

  if (!toggle || !filter) return;

  toggle.addEventListener("click", () => {
    document.querySelectorAll(".dropdown").forEach(el => {
      if (el !== filter) el.classList.add("hidden");
    });

    filter.classList.toggle("hidden");
  });
});