/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A017714 sequence
-/

namespace Sequence

@[OEIS := A017714, offset := 50, maxIndex := 100, derive := true]
def A017714 (n : ℕ) : ℕ :=
  let x := n - 50
  Int.toNat <| loop (λ (x y) ↦ ((2 * loop (λ (x _y) ↦ (2 * (x + x)) + x) 2 x) / y) + x) x 1

end Sequence