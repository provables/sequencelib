/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A181404 sequence
-/

namespace Sequence

@[OEIS := A181404, offset := 1, maxIndex := 61, derive := true]
def A181404 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop2 (λ (_x y) ↦ y * y) (λ (_x _y) ↦ 4) x 1 2 - 1

end Sequence