# Maintaining Focale Community

The intended public repository is **focale-editor/community**. The local project
folder is **FocaleCommunity**. This repository needs GitHub Issues; it has no
application build, package dependencies or Pages deployment.

## First publication

1. Create a public `focale-editor/community` repository without generated files,
   and publish this checkout on its default branch, `main`.
2. Enable **Issues** in the repository settings. Set the description to
   `Bug reports, feature requests, improvements and questions for Focale.` and
   the website to `https://focale-editor.app`.
3. Install and authenticate the [GitHub CLI](https://cli.github.com/), then create
   the labels with an account that can manage this repository:

   ```bash
   bash scripts/setup-labels.sh focale-editor/community
   ```

   This updates the named labels' colors and descriptions without deleting other
   labels or changing existing issue assignments. Run it again after editing the
   label definitions. It does not create or publish the repository.
4. Open [the issue chooser](https://github.com/focale-editor/community/issues/new/choose).
   Check all four forms, required fields, contact links and automatic labels.
   Verify that the public README's links reach the intended forms.
5. Publish the prepared community links in the organization profile and releases
   repository. Existing issues can remain in their repositories; link related
   reports here as needed.

GitHub reads forms from the default branch. Labels named by a template must
already exist to be applied automatically; a file in Git alone does not create
them. See [GitHub's issue form reference](https://docs.github.com/en/communities/using-templates-to-encourage-useful-issues-and-pull-requests/syntax-for-issue-forms).

All feedback, including questions, uses Issues initially. Discussions can be
introduced later if longer conversations need their own space. No project board,
organization-level issue types or bot permissions are required.

If you choose a different repository name, update the `focale-editor/community`
links in this checkout, its Git remote and the links in the related repositories
before publication.

## Labels and triage

| Label | Meaning |
| --- | --- |
| `bug` | Behavior that does not match the expected result |
| `feature` | A new capability |
| `improvement` | A refinement to an existing capability or workflow |
| `question` | A request for help or clarification |
| `needs-triage` | A new report awaiting review |
| `needs-info` | More information is needed from the reporter |
| `planned` | Accepted for future work, without a promised delivery date |
| `in-progress` | Work is underway |
| `duplicate` | Another issue already tracks the same topic |
| `wontfix` | A reviewed proposal or report that will not be pursued |

Keep one primary category and one current status label where useful. Remove
`needs-triage` once reviewed; replace status labels as work progresses. Confirm
the scope and reproduction, link duplicates, and explain declined requests.
Use GitHub's closed state for resolved issues, with a comment pointing to the
answer or released fix. Do not auto-close reports solely because they are old.

For a pull request in another repository, link it from the community issue and
use a fully qualified closing reference such as
`Fixes focale-editor/community#123` when appropriate. Keep public progress notes
understandable without access to private implementation details.

## Editing forms

Forms live in `.github/ISSUE_TEMPLATE/`. Their numeric prefixes set chooser order.
`config.yml` provides documentation, downloads and the private security contact;
blank issues are disabled so reports start with a relevant form.

Keep questions brief, avoid requesting private data and reserve required fields
for information needed to understand the report. Validate YAML and relative
Markdown links, run `bash -n scripts/setup-labels.sh` and `git diff --check`, then
preview changed forms on GitHub after they reach the default branch.
