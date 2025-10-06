/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A294319 sequence
-/

namespace Sequence

@[OEIS := A294319, offset := 0, maxIndex := 6, derive := true]
def A294319 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ loop (λ (x y) ↦ x * y) (((2 + y) + y) + y) x) x 1 * 2

end Sequence