/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A176595 sequence
-/

namespace Sequence

@[OEIS := A176595, offset := 0, maxIndex := 6, derive := true]
def A176595 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x _y) ↦ x * x) x (loop (λ (x _y) ↦ 1 + (x + x)) 2 2)

end Sequence