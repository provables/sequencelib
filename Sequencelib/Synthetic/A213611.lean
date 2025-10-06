/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A213611 sequence
-/

namespace Sequence

@[OEIS := A213611, offset := 6, maxIndex := 11, derive := true]
def A213611 (n : ℕ) : ℕ :=
  let x := n - 6
  Int.toNat <| ((loop2 (λ (x y) ↦ y - x) (λ (x _y) ↦ 2 - x) x 1 0 + loop (λ (x _y) ↦ x + x) x 1) - 1) % (2 + x)

end Sequence