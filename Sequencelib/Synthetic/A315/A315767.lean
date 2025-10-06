/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A315767 sequence
-/

namespace Sequence

@[OEIS := A315767, offset := 0, maxIndex := 49, derive := true]
def A315767 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ ((((((((((((x / 2) / 2) + x) / 2) + 1) / 2) + x) / 2) + 1) % 2) + x / 2) + 2) * 2) x 1

end Sequence