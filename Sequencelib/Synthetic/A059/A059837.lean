/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A059837 sequence
-/

namespace Sequence

@[OEIS := A059837, offset := 1, maxIndex := 19, derive := true]
def A059837 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y) ↦ 2 * ((2 * (x * (y / 2))) + x)) x 1 / (1 + x)

end Sequence