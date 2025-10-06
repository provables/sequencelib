/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A152491 sequence
-/

namespace Sequence

@[OEIS := A152491, offset := 1, maxIndex := 6, derive := true]
def A152491 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y) ↦ 1 + (loop (λ (_x y) ↦ y) (x - 2) 1 * y)) x 1 * 2

end Sequence