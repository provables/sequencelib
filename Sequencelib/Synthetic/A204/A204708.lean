/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A204708 sequence
-/

namespace Sequence

@[OEIS := A204708, offset := 1, maxIndex := 100, derive := true]
def A204708 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (loop2 (λ (_x y) ↦ y + y) (λ (x y) ↦ 2 * (x + y)) (x + 2) 1 2 * 2) + 1

end Sequence