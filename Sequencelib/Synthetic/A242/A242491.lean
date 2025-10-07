/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A242491 sequence
-/

namespace Sequence

@[OEIS := A242491, offset := 1, maxIndex := 68, derive := true]
def A242491 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| comprN (λ (x) ↦ if (((1 + ((x / 2) / (1 + 4))) * (1 + x)) % (1 + 4)) ≤ 0 then x else 1 - 1) (1 + x)

end Sequence