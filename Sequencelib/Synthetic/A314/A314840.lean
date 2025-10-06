/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A314840 sequence
-/

namespace Sequence

@[OEIS := A314840, offset := 0, maxIndex := 49, derive := true]
def A314840 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ (1 + ((x / 2) / 3)) + 3 * y) x 1 + x

end Sequence