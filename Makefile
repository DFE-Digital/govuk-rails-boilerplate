.PHONY: build-local-image
build-local-image:
	docker buildx build -t dfedigital/govuk-rails-boilerplate:builder-local \
		--cache-from dfedigital/govuk-rails-boilerplate:builder-local \
		--target builder \
		.
	docker buildx build -t dfedigital/govuk-rails-boilerplate:local \
		--cache-from dfedigital/govuk-rails-boilerplate:builder-local \
		--cache-from dfedigital/govuk-rails-boilerplate:local \
		.
