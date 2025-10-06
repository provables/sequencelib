/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A163064 sequence
-/

namespace Sequence

@[OEIS := A163064, offset := 0, maxIndex := 100, derive := true]
def A163064 (x : ℕ) : ℕ :=
  Int.toNat <| loop2 (λ (x y) ↦ (2 * ((x + x) + x)) - y) (λ (x y) ↦ (y - x) + y) x 3 1

end Sequence