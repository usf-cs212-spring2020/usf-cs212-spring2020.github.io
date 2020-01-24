
install:
	bundle install

# Build and run web server with drafts
run:
	bundle exec jekyll serve --drafts --port 8000 --host 0.0.0.0

# Build and run web server as production
prod:
	JEKYLL_ENV=production bundle exec jekyll serve --port 8000 --host 0.0.0.0
