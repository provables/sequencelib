/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A262564 sequence
-/

namespace Sequence

@[OEIS := A262564, offset := 1, maxIndex := 74, derive := true]
def A262564 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (loop (λ (x _y) ↦ loop (λ (x y) ↦ (x % 3) * y) x 1) 2 x + 1) + x

end Sequence