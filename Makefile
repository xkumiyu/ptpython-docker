.PHONY: build
build: build-3.9 build-3.8 build-3.7
	docker tag xkumiyu/ptpy:3.9 xkumiyu/ptpy:latest

.PHONY: build-3.9
build-3.9: build-3.9-base
	docker tag xkumiyu/ptpy:3.9-base xkumiyu/ptpy:3.9

.PHONY: build-3.9-base
build-3.9-base: 3.9/base/requirements.txt
	cd 3.9/base && docker build -t xkumiyu/ptpy:3.9-base .

3.9/base/requirements.txt: 3.9/base/pyproject.toml
	cd 3.9/base && poetry export --without-hashes -o requirements.txt

.PHONY: build-3.8
build-3.8: build-3.8-base
	docker tag xkumiyu/ptpy:3.8-base xkumiyu/ptpy:3.8

.PHONY: build-3.8-base
build-3.8-base: 3.8/base/requirements.txt
	cd 3.8/base && docker build -t xkumiyu/ptpy:3.8-base .

3.8/base/requirements.txt: 3.8/base/pyproject.toml
	cd 3.8/base && poetry export --without-hashes -o requirements.txt

.PHONY: build-3.7
build-3.7: build-3.7-base
	docker tag xkumiyu/ptpy:3.7-base xkumiyu/ptpy:3.7

.PHONY: build-3.7-base
build-3.7-base: 3.7/base/requirements.txt
	cd 3.7/base && docker build -t xkumiyu/ptpy:3.7-base .

3.7/base/requirements.txt: 3.7/base/pyproject.toml
	cd 3.7/base && poetry export --without-hashes -o requirements.txt

.PHONY: build-3.7-tf1.15
build-3.7-tf1.15: build-3.7-base
	cd 3.7/tf1.15 && docker build -t xkumiyu/ptpy:3.7-tf1.15 .

.PHONY: build-3.7-tf2.4
build-3.7-tf2.4: build-3.7-base
	cd 3.7/tf2.4 && docker build -t xkumiyu/ptpy:3.7-tf2.4 .
