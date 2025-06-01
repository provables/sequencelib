import Lean
import Sequencelib.Meta

open Lean

@[OEIS := A01, offset := 3]
def foo (n : Nat) : Nat := n

@[OEIS := A02]
def bar (n : Nat) : Nat := n

@[OEIS := A02]
def baz (n : Nat) : Nat := n

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
    sequences := #[{ tagName := "A02",
                     definition := `bar,
                     module := `Tests.TestInfo,
                     theorems := #[Thm.Value `bar_one `bar 1 1],
                     offset := 0 },
                   { tagName := "A02",
                     definition := `baz,
                     module := `Tests.TestInfo,
                     theorems := #[Thm.Equiv `baz_eq_bar `baz `bar],
                     offset := 0 }],
    offset := 0 }),
 ("A01",
  { tagName := "A01",
    sequences := #[{ tagName := "A01",
                     definition := `foo,
                     module := `Tests.TestInfo,
                     theorems := #[Thm.Value `foo_five `foo 5 6, Thm.Value `foo_seven `foo 7 7],
                     offset := 3 }],
    offset := 3 })]
-/
#guard_msgs in
run_meta do
  let info ← getOEISInfo
  logInfo m!"{repr info}"

/--
info: {"Tests.TestInfo":
 {"A02":
  [0,
   {"baz": {"baz_eq_bar": {"type": "equiv", "theorem": "baz_eq_bar", "seq2": "bar", "seq1": "baz"}},
    "bar": {"bar_one": {"value": 1, "type": "value", "theorem": "bar_one", "index": 1, "declaration": "bar"}}}],
  "A01":
  [3,
   {"foo":
    {"foo_seven": {"value": 7, "type": "value", "theorem": "foo_seven", "index": 7, "declaration": "foo"},
     "foo_five": {"value": 6, "type": "value", "theorem": "foo_five", "index": 5, "declaration": "foo"}}}]}}
-/
#guard_msgs in
run_meta do
  let info := OEISInfoToJson <| ← getOEISInfo
  logInfo m!"{info}"
