/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira, Joe Stubbs
-/
import Lean
import Sequencelib.Meta

open Lean

@[OEIS := A01, offset := 3]
def foo (n : Nat) : Nat := n

@[OEIS := A02]
def bar (n : Nat) : Nat := n

@[OEIS := A02]
noncomputable def baz (n : Nat) : Nat := n

@[OEIS := A03]
def bazSign (n : Nat) : Int := -n

/--
warning: declaration uses 'sorry'
-/
#guard_msgs in
theorem foo_five : foo 5 = 6 := by sorry

theorem foo_seven : foo 7 = 7 := rfl

theorem bar_one : bar 1 = 1 := rfl

theorem baz_eq_bar : baz = bar := rfl

/--
info: Std.HashMap.ofList [("A02",
  { tagName := "A02",
    codomain := Codomain.Nat,
    sequences := #[⟨Codomain.Nat, { tagName := "A02",
                      definition := `bar,
                      module := `Tests.TestInfo,
                      theorems := #[[Nat] theorem bar_one : bar 1 = 1],
                      offset := 0,
                      isComputable := true }⟩,
                   ⟨Codomain.Nat, { tagName := "A02",
                      definition := `baz,
                      module := `Tests.TestInfo,
                      theorems := #[theorem baz_eq_bar : baz = bar],
                      offset := 0,
                      isComputable := false }⟩],
    offset := 0 }),
 ("A03",
  { tagName := "A03",
    codomain := Codomain.Int,
    sequences := #[⟨Codomain.Int, { tagName := "A03",
                      definition := `bazSign,
                      module := `Tests.TestInfo,
                      theorems := #[],
                      offset := 0,
                      isComputable := true }⟩],
    offset := 0 }),
 ("A01",
  { tagName := "A01",
    codomain := Codomain.Nat,
    sequences := #[⟨Codomain.Nat, { tagName := "A01",
                      definition := `foo,
                      module := `Tests.TestInfo,
                      theorems := #[[Nat] theorem foo_five : foo 5 = 6, [Nat] theorem foo_seven : foo 7 = 7],
                      offset := 3,
                      isComputable := true }⟩],
    offset := 3 })]
-/
#guard_msgs in
run_meta do
  let info ← getOEISInfo
  logInfo m!"{repr info}"

/--
info: {"Tests.TestInfo":
 {"A03": {"offset": 0, "decls": {"bazSign": {"thms": {}, "isComputable": true, "codomain": "Codomain.Int"}}},
  "A02":
  {"offset": 0,
   "decls":
   {"baz":
    {"thms": {"baz_eq_bar": {"type": "equiv", "theorem": "baz_eq_bar", "seq2": "bar", "seq1": "baz"}},
     "isComputable": false,
     "codomain": "Codomain.Nat"},
    "bar":
    {"thms": {"bar_one": {"value": 1, "type": "value", "theorem": "bar_one", "index": 1, "declaration": "bar"}},
     "isComputable": true,
     "codomain": "Codomain.Nat"}}},
  "A01":
  {"offset": 3,
   "decls":
   {"foo":
    {"thms":
     {"foo_seven": {"value": 7, "type": "value", "theorem": "foo_seven", "index": 7, "declaration": "foo"},
      "foo_five": {"value": 6, "type": "value", "theorem": "foo_five", "index": 5, "declaration": "foo"}},
     "isComputable": true,
     "codomain": "Codomain.Nat"}}}}}
-/
#guard_msgs in
run_meta do
  let info := OEISInfoToJson <| ← getOEISInfo
  logInfo m!"{info}"
