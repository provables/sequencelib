/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A057241 sequence
-/

namespace Sequence

@[OEIS := A057241, offset := 0, maxIndex := 4, derive := true]
def A057241 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ (y % x) + x) x x - x

end Sequence