/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A338109 sequence
-/

namespace Sequence

@[OEIS := A338109, offset := 0, maxIndex := 36, derive := true]
def A338109 (x : ℕ) : ℕ :=
  Int.toNat <| ((((((((((loop (λ (x _y) ↦ x * x) 1 (3 * (1 + x)) - 2) - 2) * 2) * x) + 1) + 2) / 2) * 2) - 2) + 1) -
  (((x * 2) * 2) + x) * x

end Sequence