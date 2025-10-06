/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A131722 sequence
-/

namespace Sequence

@[OEIS := A131722, offset := 0, maxIndex := 67, derive := true]
def A131722 (x : ℕ) : ℕ :=
  Int.toNat <| loop (λ (_x _y) ↦ 2 + (2 * 4)) ((x % (1 + (2 + 3)))) 0

end Sequence