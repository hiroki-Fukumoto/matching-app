.PHONY: openapi-generate
openapi-generate:
	rm -rf ./openapi/client
	rm -rf ./openapi/generated
	openapi-generator generate -i openapi/openapi.yml -g openapi-yaml -o ./openapi/generated
	openapi-generator generate -i openapi/openapi.yml -g dart-dio -o ./openapi/client
	cd ./openapi/client && flutter pub get && flutter packages pub run build_runner build --delete-conflicting-outputs

.PHONY: build
build:
# 	fvm flutter analyze
	fvm flutter packages pub run build_runner build

