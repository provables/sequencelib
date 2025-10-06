/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A036750 sequence
-/

namespace Sequence

@[OEIS := A036750, offset := 1, maxIndex := 6, derive := true]
def A036750 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y) ↦ (2 + (2 + (2 - y))) * x) x 3

end Sequence