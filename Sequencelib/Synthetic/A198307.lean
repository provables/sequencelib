/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A198307 sequence
-/

namespace Sequence

@[OEIS := A198307, offset := 3, maxIndex := 100, derive := true]
def A198307 (n : ℕ) : ℕ :=
  let x := n - 3
  Int.toNat <| (loop2 (λ (_x y) ↦ 2 * (3 * (1 + y))) (λ (x _y) ↦ x) x 3 0 * 2) + 2

end Sequence