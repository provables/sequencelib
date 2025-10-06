/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A341322 sequence
-/

namespace Sequence

@[OEIS := A341322, offset := 1, maxIndex := 4, derive := true]
def A341322 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop2 (λ (_x y) ↦ 1 + y) (λ (_x y) ↦ y * y) x 0 2 + 2

end Sequence