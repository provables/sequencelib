import Lean

open Lean Meta

initialize registerBuiltinAttribute {
    name := `OEIS
    descr := "Description of what your foo attribute does"
    applicationTime := AttributeApplicationTime.beforeElaboration
    add := fun decl stx kind => do
      match stx with
      | `(attr|$name:ident $seqno:num) => do
        let seqnoVal := seqno.getNat
        let oldDoc := (← findDocString? (← getEnv) decl).getD ""
        let newDoc := [s!
          "[The On-Line Encyclopedia of Integer Sequences (OEIS): {seqnoVal}](https://oeis.org/{seqnoVal})",
          oldDoc
        ]
        addDocString decl <| "\n\n".intercalate <| newDoc.filter (· ≠ "")
        logInfo m!"Added docs to {decl} with OEIS: {seqnoVal}"
      | _ => throwError "invalid OEIS attribute syntax"
  }
