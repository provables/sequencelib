/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A025691 sequence
-/

namespace Sequence

@[OEIS := A025691, offset := 1, maxIndex := 100, derive := true]
def A025691 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y) ↦ if (y - x) ≤ 0 then x - y else x) x x

end Sequence