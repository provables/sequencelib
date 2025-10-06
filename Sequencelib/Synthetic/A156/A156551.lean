/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A156551 sequence
-/

namespace Sequence

@[OEIS := A156551, offset := 0, maxIndex := 89, derive := true]
def A156551 (x : ℕ) : ℕ :=
  Int.toNat <| (loop (λ (x _y) ↦ x + x) (2 * (2 + x)) (((2 + x) * 2) + 2) / 2) % (loop (λ (x _y) ↦ (x + x) + x) 2 1 + 1)

end Sequence