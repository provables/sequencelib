/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A170837 sequence
-/

namespace Sequence

@[OEIS := A170837, offset := 0, maxIndex := 100, derive := true]
def A170837 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ (1 + (3 * (x % (2 * 4)))) + x) x 0

end Sequence