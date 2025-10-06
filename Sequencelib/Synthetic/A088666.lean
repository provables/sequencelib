/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A088666 sequence
-/

namespace Sequence

@[OEIS := A088666, offset := 0, maxIndex := 100, derive := true]
def A088666 (x : ℕ) : ℕ :=
  Int.toNat <| (loop (λ (x _y) ↦ x * x) 2 x % (2 + (2 * 4))) + 1

end Sequence