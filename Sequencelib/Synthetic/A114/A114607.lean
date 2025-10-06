/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A114607 sequence
-/

namespace Sequence

@[OEIS := A114607, offset := 1, maxIndex := 100, derive := true]
def A114607 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| if (loop (λ (x y) ↦ (x - 1) - if x ≤ 0 then 0 else y) x x + x) ≤ 0 then loop (λ (_x _y) ↦ 0) x 1 else 1

end Sequence