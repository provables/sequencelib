/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A118136 sequence
-/

namespace Sequence

@[OEIS := A118136, offset := 0, maxIndex := 95, derive := true]
def A118136 (x : ℕ) : ℕ :=
  Int.toNat <| (loop (λ (x y) ↦ x * y) x 2 % (1 + x)) + 2

end Sequence