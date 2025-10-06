/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A053106 sequence
-/

namespace Sequence

@[OEIS := A053106, offset := 0, maxIndex := 100, derive := true]
def A053106 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ (loop (λ (x y) ↦ ((2 + x) * y) + x) 2 y + y) * x) x 1

end Sequence