/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A212681 sequence
-/

namespace Sequence

@[OEIS := A212681, offset := 0, maxIndex := 34, derive := true]
def A212681 (x : ℕ) : ℕ :=
  Int.toNat <| (((loop (λ (x y) ↦ (x - 2) + y) (x + x) 2 * x) / 2) / 2) * x

end Sequence