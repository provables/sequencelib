import Lean

open Lean Meta

initialize registerBuiltinAttribute {
    name := `OEIS
    descr := "Description of what your foo attribute does"
    applicationTime := AttributeApplicationTime.beforeElaboration
    add := fun decl stx kind => do
      match stx with
      | `(attr|$name:ident $seqno:num) => do
        let env ← getEnv
        let seqnoVal := seqno.getNat
        let oldDoc := (← findDocString? env decl).getD ""
        let newDoc := [s!
          "[The On-Line Encyclopedia of Integer Sequences (OEIS): {seqnoVal}](https://oeis.org/{seqnoVal})",
          oldDoc
        ]
        addDocString decl <| "\n\n".intercalate <| newDoc.filter (· ≠ "")
        let mod := env.getModuleIdxFor? decl
        match mod with
        | some modIdx => do
          throwError ""
        | _ => throwError s!"no module for {decl}"
      | _ => throwError "invalid OEIS attribute syntax"
  }
