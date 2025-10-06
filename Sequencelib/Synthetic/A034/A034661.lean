/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A034661 sequence
-/

namespace Sequence

@[OEIS := A034661, offset := 0, maxIndex := 100, derive := true]
def A034661 (x : ℕ) : ℕ :=
  Int.toNat <| (loop (λ (x _y) ↦ (x * x) + x) 1 (loop (λ (x _y) ↦ (x + x) + x) x 1) + 1) * (loop (λ (x _y) ↦ x + x) x 1 + 1)

end Sequence