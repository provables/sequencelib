/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A027334 sequence
-/

namespace Sequence

@[OEIS := A027334, offset := 0, maxIndex := 24, derive := true]
def A027334 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ (x + x) + x) x (loop (λ (_x _y) ↦ 2) (x - 1) 1)

end Sequence