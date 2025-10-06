/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A010896 sequence
-/

namespace Sequence

@[OEIS := A010896, offset := 1, maxIndex := 7, derive := true]
def A010896 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((((((((((1 + x) * loop (λ (x y) ↦ x + y) (2 + x) x) / 2) + 1) + x) + x) / 2) + x) + x) + x) + 2

end Sequence