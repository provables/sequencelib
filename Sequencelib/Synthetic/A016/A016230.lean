/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A016230 sequence
-/

namespace Sequence

@[OEIS := A016230, offset := 0, maxIndex := 18, derive := true]
def A016230 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ (loop (λ (x _y) ↦ 1 + ((2 * ((x + x) + x)) + x)) y 1 + (x + x) * 2) + x) x 1

end Sequence