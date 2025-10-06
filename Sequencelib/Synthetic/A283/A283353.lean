/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A283353 sequence
-/

namespace Sequence

@[OEIS := A283353, offset := 0, maxIndex := 100, derive := true]
def A283353 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ ((3 * ((x - y) % 2)) + x) * 2) x 1

end Sequence