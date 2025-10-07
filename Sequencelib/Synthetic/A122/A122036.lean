/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A122036 sequence
-/

namespace Sequence

@[OEIS := A122036, offset := 1, maxIndex := 1, derive := true]
def A122036 (_n : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ ((((((((x + y) * (1 + x)) + 2) * x) + 1) + 2) + 2) * 2) + 1) 2 2

end Sequence
