/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A178027 sequence
-/

namespace Sequence

@[OEIS := A178027, offset := 0, maxIndex := 35, derive := true]
def A178027 (x : ℕ) : ℕ :=
  Int.toNat <| (loop (λ (x _y) ↦ loop (λ (x _y) ↦ (x * x) + x) 2 2 * x) 2 3 * x) - x

end Sequence