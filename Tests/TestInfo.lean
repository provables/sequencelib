/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira, Joe Stubbs
-/
import Lean
import Sequencelib.Meta
import Tests.AnotherModule

open Lean

@[OEIS := A01, offset := 1]
def foo (n : Nat) : Nat := n

@[OEIS := A02]
def bar (n : Nat) : Nat := n

@[OEIS := A02]
noncomputable def baz (n : Nat) : Nat := n

@[OEIS := A03]
def bazSign (n : Nat) : Int := -n

/--
warning: declaration uses `sorry`
-/
#guard_msgs in
theorem foo_five : foo 5 = 6 := by sorry

theorem foo_seven : foo 7 = 7 := rfl

theorem bar_one : bar 1 = 1 := rfl

theorem baz_eq_bar : baz = bar := rfl

/--
info: Std.HashMap.ofList [("A02",
  { toSimpleTag := { tagName := "A02",
                     codomain := Codomain.Nat,
                     offset := 0,
                     sequences := #[{ tagName := "A02",
                                      definition := `bar,
                                      mod := `Tests.TestInfo,
                                      isComputable := true,
                                      derive := false,
                                      maxIndex := 0 },
                                    { tagName := "A02",
                                      definition := `baz,
                                      mod := `Tests.TestInfo,
                                      isComputable := false,
                                      derive := false,
                                      maxIndex := 0 }] },
    theorems := #[[Nat] theorem bar_one : bar 1 = 1, theorem baz_eq_bar : baz = bar] }),
 ("A03",
  { toSimpleTag := { tagName := "A03",
                     codomain := Codomain.Int,
                     offset := 0,
                     sequences := #[{ tagName := "A03",
                                      definition := `bazSign,
                                      mod := `Tests.TestInfo,
                                      isComputable := true,
                                      derive := false,
                                      maxIndex := 0 }] },
    theorems := #[] }),
 ("A01",
  { toSimpleTag := { tagName := "A01",
                     codomain := Codomain.Nat,
                     offset := 1,
                     sequences := #[{ tagName := "A01",
                                      definition := `another_foo,
                                      mod := `Tests.AnotherModule,
                                      isComputable := true,
                                      derive := false,
                                      maxIndex := 0 },
                                    { tagName := "A01",
                                      definition := `foo,
                                      mod := `Tests.TestInfo,
                                      isComputable := true,
                                      derive := false,
                                      maxIndex := 0 }] },
    theorems := #[[Nat] theorem foo_five : foo 5 = 6, [Nat] theorem foo_seven : foo 7 = 7] })]
-/
#guard_msgs in
run_meta do
  let info ← getTagsWithInfo
  logInfo m!"{repr info}"

/--
info: {"Tests.TestInfo":
 {"A03": {"offset": 0, "decls": {"bazSign": {"thms": {}, "isComputable": true, "codomain": "Codomain.Int"}}},
  "A02":
  {"offset": 0,
   "decls":
   {"baz":
    {"thms":
     {"baz_eq_bar": {"type": "equiv", "theorem": "baz_eq_bar", "seq2": "bar", "seq1": "baz"},
      "bar_one": {"value": 1, "type": "value", "theorem": "bar_one", "index": 1, "declaration": "bar"}},
     "isComputable": false,
     "codomain": "Codomain.Nat"},
    "bar":
    {"thms":
     {"baz_eq_bar": {"type": "equiv", "theorem": "baz_eq_bar", "seq2": "bar", "seq1": "baz"},
      "bar_one": {"value": 1, "type": "value", "theorem": "bar_one", "index": 1, "declaration": "bar"}},
     "isComputable": true,
     "codomain": "Codomain.Nat"}}},
  "A01":
  {"offset": 1,
   "decls":
   {"foo":
    {"thms":
     {"foo_seven": {"value": 7, "type": "value", "theorem": "foo_seven", "index": 7, "declaration": "foo"},
      "foo_five": {"value": 6, "type": "value", "theorem": "foo_five", "index": 5, "declaration": "foo"}},
     "isComputable": true,
     "codomain": "Codomain.Nat"}}}},
 "Tests.AnotherModule":
 {"A01":
  {"offset": 1,
   "decls":
   {"another_foo":
    {"thms":
     {"foo_seven": {"value": 7, "type": "value", "theorem": "foo_seven", "index": 7, "declaration": "foo"},
      "foo_five": {"value": 6, "type": "value", "theorem": "foo_five", "index": 5, "declaration": "foo"}},
     "isComputable": true,
     "codomain": "Codomain.Nat"}}}}}
-/
#guard_msgs in
run_meta do
  let info := OEISInfoToJson <| ← getTagsWithInfo
  logInfo m!"{info}"
