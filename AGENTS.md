# Codex User Preferences

- When creating or updating GitHub pull requests, do not include `codex` or a `[codex]` prefix in the PR title.
- Do not introduce trivial one- or two-line helper functions; keep the logic inline at the call site unless the helper meaningfully abstracts repeated or complex behavior.
- Do not carry PRD- or architecture-only block/section identifiers into code names, test names, fixture names, or filenames; use names that describe runtime behavior or responsibility instead.
- Do not add defensive validation for states already guaranteed by internal types, registered class prototypes, or private data-structure invariants, and do not synthesize Java exceptions for such impossible states. Keep validation only at external or dynamic boundaries and where the Java specification requires observable errors.
- Do not add redundant code for behavior already provided by the framework, runtime, toolchain, or an existing abstraction. Rely on the established mechanism unless an observable requirement proves additional logic is necessary.
- When a required runtime feature exposes a defect, do not disable, bypass, or weaken the feature as a fix. Preserve its contract and diagnose and correct the underlying cause; temporary diagnostic toggles must never become implementation options.
- Do not preserve backward compatibility. Remove obsolete paths instead of
  adding compatibility layers, fallbacks, or migrations.
- Choose the simplest implementation that fully meets the current
  requirements. Avoid speculative abstractions, configuration, and
  indirection.
- Grow the system in layers. Start from the smallest version that works end
  to end, and add each new capability on top of a product that already
  works. Never trade a working product for unfinished complexity.
- Keep components modular and concerns clearly separated.
- Prefer established, well-maintained libraries when they reduce overall
  complexity or improve reliability. Do not reimplement common
  functionality without a clear reason.
- Lean on the dependencies already in the project before writing your own
  implementation or adding packages. Do not assume a library lacks a
  capability without checking its documentation and types.
- Make architectural decisions for the long term. Do not accept a stopgap
  that only works for now and is meant to be replaced later.
- Study how established products solve the problem
  before designing a solution. Adopt their proven
  patterns and conventions rather than inventing
  an approach from scratch.
