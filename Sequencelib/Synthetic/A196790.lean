/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A196790 sequence
-/

namespace Sequence

@[OEIS := A196790, offset := 10, maxIndex := 100, derive := true]
def A196790 (n : ℕ) : ℕ :=
  let x := n - 10
  Int.toNat <| loop (λ (x _y) ↦ loop (λ (x y) ↦ ((2 * ((2 * (x + x)) + x)) / y) + x) x 1) 1 (1 + (x + x))

end Sequence