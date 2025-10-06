/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A161714 sequence
-/

namespace Sequence

@[OEIS := A161714, offset := 0, maxIndex := 49, derive := true]
def A161714 (x : ℕ) : ℕ :=
  Int.toNat <| 1 + ((loop (λ (x y) ↦ (x * x) + y) 2 2 * x) + x)

end Sequence