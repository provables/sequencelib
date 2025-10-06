/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A125895 sequence
-/

namespace Sequence

@[OEIS := A125895, offset := 1, maxIndex := 45, derive := true]
def A125895 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (loop2 (λ (x y) ↦ 2 * (x + y)) (λ (x _y) ↦ x) x 1 1 - x) / loop (λ (x _y) ↦ x + x) x 1

end Sequence