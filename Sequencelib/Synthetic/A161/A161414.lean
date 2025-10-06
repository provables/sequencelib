/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A161414 sequence
-/

namespace Sequence

@[OEIS := A161414, offset := 1, maxIndex := 5, derive := true]
def A161414 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (loop2 (λ (x y) ↦ (y % (1 + x)) + (x + x)) (λ (_x y) ↦ y) x 1 x + 1) - x

end Sequence