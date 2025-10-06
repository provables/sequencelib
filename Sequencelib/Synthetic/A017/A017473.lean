/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A017473 sequence
-/

namespace Sequence

@[OEIS := A017473, offset := 0, maxIndex := 100, derive := true]
def A017473 (x : ℕ) : ℕ :=
  Int.toNat <| 1 + (loop (λ (x y) ↦ ((2 + y) * x) + y) 2 x - x)

end Sequence