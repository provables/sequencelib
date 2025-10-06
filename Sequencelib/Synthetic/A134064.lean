/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A134064 sequence
-/

namespace Sequence

@[OEIS := A134064, offset := 0, maxIndex := 26, derive := true]
def A134064 (x : ℕ) : ℕ :=
  Int.toNat <| ((loop (λ (x _y) ↦ 1 + (x + x)) x (loop (λ (x _y) ↦ x + x) x 1) - loop (λ (x _y) ↦ (x + x) + x) x 1) / 2) + 1

end Sequence