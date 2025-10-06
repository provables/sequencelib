/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A136796 sequence
-/

namespace Sequence

@[OEIS := A136796, offset := 1, maxIndex := 100, derive := true]
def A136796 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop2 (λ (x y) ↦ ((y * x) + x) * 4) (λ (_x y) ↦ y) x 2 x

end Sequence