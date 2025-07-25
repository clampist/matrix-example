# matrix-example

```mermaid
graph LR  
  CI --> local
  CI --> master
  CI --> branch
  CI --> release

  %% === local ===
  local --> local_build[build]
  local_build --> local_ut[ut]
  local_build --> local_integration[Integration Testing]
  local_build --> local_p0[P0 backend cases]
  local_build --> local_smart[smart cases]
  local_build --> local_new[new case]
  local --> local_formatting[formatting]
  local --> local_security[security]
  local --> local_sonar[sonar]

  %% === master ===
  master --> master_build[build]
  master_build --> master_ut[ut]
  master_build --> master_integration[Integration Testing]
  master_build --> master_backend[P0 + P1 backend cases]
  master_build --> master_ui[ui automation]
  master_build --> master_perf[performance]

  %% Group coverage dependencies
  master_ut --> coverage
  master_integration --> coverage
  master_backend --> coverage
  master_ui --> coverage

  coverage[coverage merge]

  %% === branch ===
  branch --> branch_build[build]
  branch_build --> branch_case[P0 + P1 case]
  branch_build --> branch_ui[ui automation]

  %% === release ===
  release --> release_ui[online ui - crontab]
```



📘 Description

This diagram outlines the core structure of our CI (Continuous Integration) pipeline.
	•	CI Entry: The pipeline entry point splits into four tracks: local, master, branch, and release.

---

🔧 **Local**
	•	Triggered for local development (e.g., feature branches).
	•	Contains fast checks and basic validations:
		•	Build, Unit Testing, Integration Testing.
		•	P0 backend cases, smart regression, and newly added cases.
		•	Code formatting, security scans, and Sonar checks.
	•	**Note**: These basic checks are only done at this stage and are not repeated later.

---

🧩 **Master**
	•	Triggered on mainline (e.g., master or main branches).
	•	Covers comprehensive testing strategies:
		•	Build, Unit Testing, Integration Testing.
		•	P0 + P1 backend cases, UI automation, and performance testing.
	•	**Code coverage** is evaluated here and merged from multiple test stages.

---

🚦 **Branch**
	•	Used for pre-release regression testing on specific branches.
	•	Runs key P0 + P1 backend cases and UI automation to ensure quality before merging or release.

---

🚀 **Release**
	•	Periodically triggered via **cron schedule**.
	•	Performs online UI health checks using Playwright or other tools.
	•	Ensures that production environments remain stable and functional.

