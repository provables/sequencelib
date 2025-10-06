/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A244151 sequence
-/

namespace Sequence

@[OEIS := A244151, offset := 1, maxIndex := 37, derive := true]
def A244151 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| comprN (λ (x : ℤ) ↦ (((x / 2) % (1 + 2)) * if ((x / (1 + 2))) ≤ 0 then (0) else (x))) x + 2

end Sequence