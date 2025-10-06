/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A054099 sequence
-/

namespace Sequence

@[OEIS := A054099, offset := 0, maxIndex := 18, derive := true]
def A054099 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ (((x * y) - x) + x % 2) + 2) x 1

end Sequence