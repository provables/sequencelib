/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A244632 sequence
-/

namespace Sequence

@[OEIS := A244632, offset := 0, maxIndex := 100, derive := true]
def A244632 (x : ℕ) : ℕ :=
  Int.toNat <| (loop (λ (x y) ↦ x * y) 4 x - x) * x

end Sequence