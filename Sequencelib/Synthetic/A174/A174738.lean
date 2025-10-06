/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A174738 sequence
-/

namespace Sequence

@[OEIS := A174738, offset := 0, maxIndex := 60, derive := true]
def A174738 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ (y / (1 + (2 + 4))) + x) x 0

end Sequence