/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A213484 sequence
-/

namespace Sequence

@[OEIS := A213484, offset := 0, maxIndex := 48, derive := true]
def A213484 (x : ℕ) : ℕ :=
  Int.toNat <| 1 + (3 * (loop (λ (x y) ↦ x + y) x 1 / 2))

end Sequence