/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A027777 sequence
-/

namespace Sequence

@[OEIS := A027777, offset := 2, maxIndex := 36, derive := true]
def A027777 (n : ℕ) : ℕ :=
  let x := n - 2
  Int.toNat <| loop (λ (x y) ↦ loop (λ (x y) ↦ (y * y) + x) y x) (2 + x) 0 * (1 + x)

end Sequence