/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A168572 sequence
-/

namespace Sequence

@[OEIS := A168572, offset := 1, maxIndex := 100, derive := true]
def A168572 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y) ↦ loop (λ (x _y) ↦ (2 * ((x + x) + x)) + x) (1 + y) 1 + x) x 0

end Sequence