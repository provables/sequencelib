/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A063722 sequence
-/

namespace Sequence

@[OEIS := A063722, offset := 1, maxIndex := 5, derive := true]
def A063722 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (loop2 (λ (_x y) ↦ 2 + ((y + y) + y)) (λ (x _y) ↦ x) x 2 2 + 2) + 2

end Sequence