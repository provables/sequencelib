/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A017204 sequence
-/

namespace Sequence

@[OEIS := A017204, offset := 0, maxIndex := 12, derive := true]
def A017204 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ x * x) 3 (3 * (1 + ((x + x) + x)))

end Sequence