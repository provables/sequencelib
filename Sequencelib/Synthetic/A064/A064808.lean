/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A064808 sequence
-/

namespace Sequence

@[OEIS := A064808, offset := 0, maxIndex := 100, derive := true]
def A064808 (x : ℕ) : ℕ :=
  Int.toNat <| 1 + (loop (λ (x y) ↦ x + y) x 1 * x)

end Sequence