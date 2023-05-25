# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](http://keepachangelog.com/en/1.0.0/)
and this project adheres to [Semantic Versioning](http://semver.org/spec/v2.0.0.html).

<!-- insertion marker -->
## Unreleased

<small>[Compare with latest](https://github.com/pmoscode-helm/jdownloader2/compare/jdownloader2-0.3.0...HEAD)</small>

### Features

- add pre-commit hook (conventional commit) and post-commit hook (generate changelog) ([6ce7e67](https://github.com/pmoscode-helm/jdownloader2/commit/6ce7e67c19b181e3ef3cf1aff96193cc10768029) by Peter Motzko).
- Add unittest action ([e8e010a](https://github.com/pmoscode-helm/jdownloader2/commit/e8e010ace4f95715a07764074686203122b1e3a3) by Peter Motzko).
- Set proper name in .env-template ([2da248a](https://github.com/pmoscode-helm/jdownloader2/commit/2da248ad5bf101a03b25fa74a979393d8842c055) by Peter Motzko).
- Add code of conduct and contributing ([4f12898](https://github.com/pmoscode-helm/jdownloader2/commit/4f128980552c4fe133b559b06ce639d60dec2f15) by Peter Motzko).
- update README.md ([ceaa9c7](https://github.com/pmoscode-helm/jdownloader2/commit/ceaa9c7f854b4363018c784a4f5f579fdfb37daa) by Peter Motzko).
- Add task to publish the chart to GitHub pages (aka one-click-publish) ([6fd1be6](https://github.com/pmoscode-helm/jdownloader2/commit/6fd1be6bd95809405213c843c942cd354ee8a103) by Peter Motzko).
- Add task to generate CHANGELOG.md ([19254bd](https://github.com/pmoscode-helm/jdownloader2/commit/19254bd5ad83dad3213ef826eb0607ce50f359cc) by Peter Motzko).
- Add generated CHANGELOG.md ([381563a](https://github.com/pmoscode-helm/jdownloader2/commit/381563aa43a68d6c921710733830bfb68a87def4) by Peter Motzko).
- Remove index.yaml after "cr index" is done ([7421138](https://github.com/pmoscode-helm/jdownloader2/commit/74211380cbfdcba249e0d34dd3dbe36da0615312) by Peter Motzko).

### Bug Fixes

- wrong config ([3c0906e](https://github.com/pmoscode-helm/jdownloader2/commit/3c0906e59e08abbe4a8b3a32cb5a32439b8e3f2d) by Peter Motzko).

<!-- insertion marker -->
## [jdownloader2-0.3.0](https://github.com/pmoscode-helm/jdownloader2/releases/tag/jdownloader2-0.3.0) - 2023-04-24

<small>[Compare with jdownloader2-0.2.0](https://github.com/pmoscode-helm/jdownloader2/compare/jdownloader2-0.2.0...jdownloader2-0.3.0)</small>

### Features

- update README.md ([4a790dd](https://github.com/pmoscode-helm/jdownloader2/commit/4a790dd355c9e784fff669acfd37b39691d32d81) by Peter Motzko).
- Bump minor version ([671bb44](https://github.com/pmoscode-helm/jdownloader2/commit/671bb44f746f3da8409fb1057b952918b9cb85eb) by Peter Motzko).
- Add more tests for all resources (except serviceAccount) ([5f8312c](https://github.com/pmoscode-helm/jdownloader2/commit/5f8312cffba810bc86792cb5839eeebcf4127193) by Peter Motzko).
- Remove unnecessary values + change default type for web-service ([e6d5fac](https://github.com/pmoscode-helm/jdownloader2/commit/e6d5fac19f440618e9e70569aaeb23b9031a5000) by Peter Motzko).
- Use ClusterIP when ingress is enabled, otherwise use service.web.type value ([5f907fb](https://github.com/pmoscode-helm/jdownloader2/commit/5f907fb35179b6a568a7b22bdfc09d7d19c757b5) by Peter Motzko).
- Use LoadBalancer as default ([2261aef](https://github.com/pmoscode-helm/jdownloader2/commit/2261aefea5c127908a27b42220aa48d1459afdc5) by Peter Motzko).
- Use ClusterIP as default ([8f69e55](https://github.com/pmoscode-helm/jdownloader2/commit/8f69e551db079404cb8e0caf420d0e01447f8745) by Peter Motzko).
- Only deploy secret, when service.myjd.enabled = enabled ([ee1ccf9](https://github.com/pmoscode-helm/jdownloader2/commit/ee1ccf9775e1562c0eccd83dd43a4653c26fe48e) by Peter Motzko).
- Add Taskfile for simplify chart publishing ([5437819](https://github.com/pmoscode-helm/jdownloader2/commit/543781916bd025c4b25b1eb4350415915d62660a) by Peter Motzko).
- Add .env for simplify chart publishing ([9881cb5](https://github.com/pmoscode-helm/jdownloader2/commit/9881cb51a4420fbaaaa09a46454c2e1d1dd68810) by Peter Motzko).
- Add Helm unittests for the first templates (WIP) ([c51de91](https://github.com/pmoscode-helm/jdownloader2/commit/c51de914401af076d4417478e38749a2aa1f92ad) by Peter Motzko).

## [jdownloader2-0.2.0](https://github.com/pmoscode-helm/jdownloader2/releases/tag/jdownloader2-0.2.0) - 2023-04-22

<small>[Compare with jdownloader2-0.1.1](https://github.com/pmoscode-helm/jdownloader2/compare/jdownloader2-0.1.1...jdownloader2-0.2.0)</small>

### Features

- bump minor version ([04759d9](https://github.com/pmoscode-helm/jdownloader2/commit/04759d9d6e15c89424de89d9a39c00a3a645a8f9) by Peter Motzko).
- update README.md ([703a67c](https://github.com/pmoscode-helm/jdownloader2/commit/703a67cd55d6f4688868bdee84d3353e782c961d) by Peter Motzko).

## [jdownloader2-0.1.1](https://github.com/pmoscode-helm/jdownloader2/releases/tag/jdownloader2-0.1.1) - 2023-04-20

<small>[Compare with jdownloader2-0.1.0](https://github.com/pmoscode-helm/jdownloader2/compare/jdownloader2-0.1.0...jdownloader2-0.1.1)</small>

### Features

- Update Chart and Readme ([13eca30](https://github.com/pmoscode-helm/jdownloader2/commit/13eca309502ec4ad04167788b20a64673199ba82) by Peter Motzko).
- Update repositoryID ([45b1253](https://github.com/pmoscode-helm/jdownloader2/commit/45b1253cb6914d7a444c3b99f9cec5d2497b44e2) by Peter Motzko).
- Delete stuff from GitLab ([ee3dcc7](https://github.com/pmoscode-helm/jdownloader2/commit/ee3dcc766523d527eaeb81792aedd80a6f53fdc9) by Peter Motzko).
- Adjust chart icon ([410ac00](https://github.com/pmoscode-helm/jdownloader2/commit/410ac00e32fec031af0140b7b7b451d5cdc03e61) by Peter Motzko).
- Adjust ArtifactID ([a2527e4](https://github.com/pmoscode-helm/jdownloader2/commit/a2527e42d4c565d5e3bb9259ca612747357cbb24) by Peter Motzko).

### Bug Fixes

- Change helm repo url after migration to GitHub ([6575ec8](https://github.com/pmoscode-helm/jdownloader2/commit/6575ec890eb217692b6ccef258061f6f15f50efb) by Peter Motzko).

## [jdownloader2-0.1.0](https://github.com/pmoscode-helm/jdownloader2/releases/tag/jdownloader2-0.1.0) - 2023-04-16

<small>[Compare with first commit](https://github.com/pmoscode-helm/jdownloader2/compare/a380671a24b0691631682b0fc9eb63c8036d02fd...jdownloader2-0.1.0)</small>

### Features

- Add unneeded stuff to .helmignore ([709108c](https://github.com/pmoscode-helm/jdownloader2/commit/709108c62c20ead4d70edf8bc1e75458ca646658) by Peter Motzko).
- Add Artifacthub badge ([3f2826d](https://github.com/pmoscode-helm/jdownloader2/commit/3f2826d3807c6536131031e1d8de4c48b14878dd) by Peter Motzko).
- Update helm-doc README template and render it ([abf7400](https://github.com/pmoscode-helm/jdownloader2/commit/abf74003c2b7593eeda686588be6e79e1c3f6834) by Peter Motzko).
- Remove unused field + add helm-docs comments + rename field for secret ([e281f86](https://github.com/pmoscode-helm/jdownloader2/commit/e281f86dbb9e7b60fcba2609ff9e33d9371b8787) by Peter Motzko).
- Add maintainer's URL ([2652537](https://github.com/pmoscode-helm/jdownloader2/commit/265253711f80d258e638f8648263f5c968d33935) by Peter Motzko).
- Add *.tgz file extension ([57439ba](https://github.com/pmoscode-helm/jdownloader2/commit/57439ba1f0b49f2449d579638664b468b3734ba6) by Peter Motzko).
- Remove artifacthub-repo.yml ([fe31fb4](https://github.com/pmoscode-helm/jdownloader2/commit/fe31fb45f8eff73990d1374fdee84d4de7069054) by Peter Motzko).
- Update description ([ade90c8](https://github.com/pmoscode-helm/jdownloader2/commit/ade90c85d78df3bdd90172e39963e8ac0941d4e9) by Peter Motzko).
- Add repo id for verification ([221e342](https://github.com/pmoscode-helm/jdownloader2/commit/221e3421acc6449701ae2db1ce30da40eff18281) by Peter Motzko).
- Get artifact name for curl ([ad9d9c4](https://github.com/pmoscode-helm/jdownloader2/commit/ad9d9c4025eb6707e9c53e87a83fd159e14d4a9b) by Peter Motzko).
- Add stage + adjust curl with wildcard ([3717ee3](https://github.com/pmoscode-helm/jdownloader2/commit/3717ee39607c581948ac33dddd180d9f674683b2) by Peter Motzko).
- Change entrypoint to bash ([7bf0dcf](https://github.com/pmoscode-helm/jdownloader2/commit/7bf0dcfd5fff13cbbe74716c6ce14ae887268f85) by Peter Motzko).
- Pipeline: add deploy to registry + Adjust Chart name ([c8ba55e](https://github.com/pmoscode-helm/jdownloader2/commit/c8ba55e6657fc0ac5d088ec81b0b2ff459c34a98) by Peter Motzko).
- Init commit ([e340124](https://github.com/pmoscode-helm/jdownloader2/commit/e3401240c7d9538e2f606dfb2a80462ce9f0914a) by Peter Motzko).

### Bug Fixes

- Add empty string ([bd38e93](https://github.com/pmoscode-helm/jdownloader2/commit/bd38e93b91e9cc74caf2824826c4c7538d42d39c) by Peter Motzko).
- Remove duplicate JDownloader link ([efd7dd6](https://github.com/pmoscode-helm/jdownloader2/commit/efd7dd638d9e69f33f4ae34e57df060fd39b88e3) by Peter Motzko).
- Icon URL ([4500ce0](https://github.com/pmoscode-helm/jdownloader2/commit/4500ce05e5a5313abfec1187af4fd92bb96326ce) by Peter Motzko).

