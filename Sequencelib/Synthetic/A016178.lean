/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A016178 sequence
-/

namespace Sequence

@[OEIS := A016178, offset := 0, maxIndex := 20, derive := true]
def A016178 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ (loop (λ (x _y) ↦ (x + x) + x) (y + y) 1 + ((x + x) + x) * 2) + x) x 1

end Sequence