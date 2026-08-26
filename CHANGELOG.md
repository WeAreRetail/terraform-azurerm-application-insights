# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [2.0.0] - 2026-08-26
### Changed
- Require `azurerm >= 5.0.0`.
- Map `daily_data_cap_notifications_disabled` to the azurerm v5 `daily_data_cap_notifications_enabled` argument while preserving the existing boolean module input.
- Replace `disable_ip_masking = false` with `ip_masking_enabled = true` to preserve the existing IP masking behavior.

## [1.0.1] - 2024-03-04
### Added
- Testing bumping minor version for testing

## [1.0.0] - 2024-01-16
### Added
- Initial Release.
