/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A133766 sequence
-/

namespace Sequence

@[OEIS := A133766, offset := 0, maxIndex := 33, derive := true]
def A133766 (x : ℕ) : ℕ :=
  Int.toNat <| (((((((loop (λ (x y) ↦ 2 + (x + y)) (2 * (x + x)) 1 * (1 + x)) * 2) + x) * 2) + 2) * 2) + 1) + 2

end Sequence