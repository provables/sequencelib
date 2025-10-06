/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A135659 sequence
-/

namespace Sequence

@[OEIS := A135659, offset := 0, maxIndex := 100, derive := true]
def A135659 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (x y) ↦ 1 + (2 * ((x * y) + x))) 2 x

end Sequence