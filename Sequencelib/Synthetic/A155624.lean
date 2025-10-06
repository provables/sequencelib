/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A155624 sequence
-/

namespace Sequence

@[OEIS := A155624, offset := 0, maxIndex := 17, derive := true]
def A155624 (x : ℕ) : ℕ :=
  Int.toNat <| (loop (λ (x _y) ↦ loop (λ (x y) ↦ (2 + y) * x) 2 x - x) x 1 - loop (λ (x _y) ↦ (x + x) + x) x 1) + 1

end Sequence