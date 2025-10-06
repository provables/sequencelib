/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A010987 sequence
-/

namespace Sequence

@[OEIS := A010987, offset := 34, maxIndex := 100, derive := true]
def A010987 (n : ℕ) : ℕ :=
  let x := n - 34
  Int.toNat <| loop (λ (x y) ↦ ((2 * ((loop (λ (x _y) ↦ x * x) 2 2 * x) + x)) / y) + x) x 1

end Sequence