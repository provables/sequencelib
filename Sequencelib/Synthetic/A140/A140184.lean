/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A140184 sequence
-/

namespace Sequence

@[OEIS := A140184, offset := 1, maxIndex := 23, derive := true]
def A140184 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (loop2 (λ (x y) ↦ 2 * (x + y)) (λ (x _y) ↦ x) x 2 1 - loop (λ (x _y) ↦ (-x)) x 1) * loop (λ (x _y) ↦ x + x) x 1

end Sequence