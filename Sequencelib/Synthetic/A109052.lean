/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A109052 sequence
-/

namespace Sequence

@[OEIS := A109052, offset := 0, maxIndex := 100, derive := true]
def A109052 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (_x _y) ↦ 1 + (2 + (2 * 4))) (x % (1 + (2 * (2 + 3)))) 1 * x

end Sequence