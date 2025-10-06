/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A151989 sequence
-/

namespace Sequence

@[OEIS := A151989, offset := 0, maxIndex := 100, derive := true]
def A151989 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ ((2 * (x + x)) / y) + x) (x * (1 + 4)) 1

end Sequence