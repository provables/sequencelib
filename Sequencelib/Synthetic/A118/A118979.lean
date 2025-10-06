/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A118979 sequence
-/

namespace Sequence

@[OEIS := A118979, offset := 3, maxIndex := 25, derive := true]
def A118979 (n : ℕ) : ℕ :=
  let x := n - 3
  Int.toNat <| ((loop (λ (x y) ↦ (loop (λ (x _y) ↦ 1 + ((x + x) + x)) y 1 + x) + x) x 1 * 2) * 3) * 2

end Sequence