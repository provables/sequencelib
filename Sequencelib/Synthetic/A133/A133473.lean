/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A133473 sequence
-/

namespace Sequence

@[OEIS := A133473, offset := 0, maxIndex := 100, derive := true]
def A133473 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ (1 + 4) * (((x - 2) - 1) + x)) x 2

end Sequence