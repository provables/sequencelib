/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A285086 sequence
-/

namespace Sequence

@[OEIS := A285086, offset := 1, maxIndex := 3, derive := true]
def A285086 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x _y) ↦ loop (λ (x y) ↦ (loop (λ (x _y) ↦ x + x) y 1 * (x * 2)) - 1) x 1 + 1) x 1 / (1 + x)

end Sequence