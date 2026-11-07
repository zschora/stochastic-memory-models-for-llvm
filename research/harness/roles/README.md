# Specialist roles

Roles are portable Markdown instructions. Load the Research Lead first; load one
specialist when its trigger matches. Do not load all roles into one context.

| Trigger | Role | Typical output |
| --- | --- | --- |
| New question, priority, stage gate, synthesis | [Research Lead](research-lead.md) | decision, task brief, state update |
| LLVM behavior, IR/CFG legality, remarks, assembly | [LLVM Engineer](llvm-engineer.md) | minimal repro, mechanism, patch/test proposal |
| Timing, caches, SIMD, noise, statistics | [Performance Scientist](performance-scientist.md) | experiment design or measurement audit |
| Formal model, proof, enumeration, prior art | [Applied Mathematician](applied-mathematician.md) | claim record with proof status |
| Independent challenge of a claim | [Critical Reviewer](critical-reviewer.md) | review verdict and missing controls |
| LLVM docs/source, upstream discussions, literature | [Literature Researcher](literature-researcher.md) | verified references and novelty boundary |

## Mode A

The lead performs the role sequentially by opening the file and following it.
The lead must not silently self-approve a claim; a self-review is labelled as
such.

## Mode B

The host assigns one role and one bounded task. Use the handoff contract in
[../protocol.md](../protocol.md). Agents exchange files and evidence links, not
hidden reasoning. The lead remains accountable for the merged result.

## Activation rules

- The Research Lead is always active.
- Use the LLVM Engineer for any claim about a compiler transformation or
  generated code.
- Use the Performance Scientist before a timing campaign and after a surprising
  result.
- Use the Applied Mathematician for any theorem, asymptotic, or probabilistic
  model claim.
- Use the Critical Reviewer before `supported`, `proved`, or an upstream
  recommendation.
- Use the Literature Researcher before claiming novelty or attributing an idea
  to LLVM.
