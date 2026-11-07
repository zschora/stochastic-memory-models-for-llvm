# Push the documentation with your exact Git identity

GitHub's ChatGPT connector can now write repository objects, but its commit
operation fixes author and committer to the integration's GitHub noreply identity
and does **not** accept explicit author/committer values. Direct outbound Git
network access is unavailable in the assistant's container. This package can
therefore be committed and pushed from your existing local clone.

Unpack this ZIP anywhere and run in **PowerShell**:

```powershell
powershell -ExecutionPolicy Bypass -File C:\path\to\unpacked\apply_and_push.ps1 -RepoPath C:\path\to\stochastic-memory-models-for-llvm
```

The script verifies the remote and clean `main`, fast-forwards, copies only
Markdown documentation, adds the README navigation, runs `git diff --cached
--check`, and creates one commit with these **exact** values for both author
and committer:

- `user.name=georgii shalygin`
- `user.email=yegorssh@gmail.com`

Then it verifies the commit metadata and pushes to `origin/main` via your local
Git credentials. It will refuse to overwrite existing files or force-push.

**Commit title:** `docs(research): document origins and research workflow`

No license file or third-party notice is changed by this package; those are a
separate follow-up task.
