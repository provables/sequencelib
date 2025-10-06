/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A161709 sequence
-/

namespace Sequence

@[OEIS := A161709, offset := 0, maxIndex := 100, derive := true]
def A161709 (x : ℕ) : ℕ :=
  Int.toNat <| 1 + ((loop (λ (x y) ↦ x * y) 4 x - x) - x)

end Sequence