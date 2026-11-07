# On-demand procedures

These are portable Agent Skills using the open `SKILL.md` convention. A host that
supports skills can discover them by directory; a terminal agent can simply open
the file and follow it manually.

| Skill | Use when |
| --- | --- |
| [llvm-reproduction-audit](llvm-reproduction-audit/SKILL.md) | Reproducing or auditing an LLVM transformation. |
| [performance-experiment-audit](performance-experiment-audit/SKILL.md) | Designing or reviewing a timing campaign. |
| [mathematical-claim-audit](mathematical-claim-audit/SKILL.md) | Checking a theorem, asymptotic, or probability claim. |
| [research-synthesis](research-synthesis/SKILL.md) | Turning reviewed evidence into a decision and next task. |

Keep skills procedural and small. Put durable responsibilities in
[../roles/](../roles/) and lifecycle rules in [../protocol.md](../protocol.md).
Do not add a skill unless it covers a recurring procedure that is not already
captured.
