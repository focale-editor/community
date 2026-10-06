#!/usr/bin/env bash
# Create or update the community labels after the repository is published.
set -euo pipefail

if [[ $# -ne 1 ]]; then
  echo "Usage: bash scripts/setup-labels.sh OWNER/REPOSITORY" >&2
  exit 1
fi

repository="$1"

label() {
  gh label create "$1" --repo "$repository" --color "$2" --description "$3" --force
}

label bug d73a4a "Something does not work as expected"
label feature 007cf9 "A new capability for Focale"
label improvement 86c8ff "Refine an existing capability or workflow"
label question 7057ff "Help or clarification"
label needs-triage edf6ff "Awaiting initial maintainer review"
label needs-info fef2c0 "More information is needed from the reporter"
label planned c2e0c6 "Accepted for future work; no release date promised"
label in-progress 1d76db "Work is underway"
label duplicate cfd3d7 "Already tracked in another issue"
label wontfix 56627f "Reviewed and not planned for implementation"
