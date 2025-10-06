/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A152457 sequence
-/

namespace Sequence

@[OEIS := A152457, offset := 0, maxIndex := 36, derive := true]
def A152457 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ (((1 + y) * (y * y)) + x) + y) x 0

end Sequence