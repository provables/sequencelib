/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A152817 sequence
-/

namespace Sequence

@[OEIS := A152817, offset := 0, maxIndex := 2, derive := true]
def A152817 (x : ℕ) : ℕ :=
  Int.toNat <| 1 + (loop (λ (x _y) ↦ 2 * (2 + x)) 2 x * x)

end Sequence