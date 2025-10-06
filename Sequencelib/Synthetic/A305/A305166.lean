/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A305166 sequence
-/

namespace Sequence

@[OEIS := A305166, offset := 0, maxIndex := 31, derive := true]
def A305166 (x : ℕ) : ℕ :=
  Int.toNat <| (((loop (λ (x _y) ↦ 2 * (loop (λ (x _y) ↦ 2 * (2 + x)) 2 2 + x)) x 1 + 1) + 2) + 2) * 4

end Sequence