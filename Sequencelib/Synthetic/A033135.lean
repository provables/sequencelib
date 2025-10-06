/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A033135 sequence
-/

namespace Sequence

@[OEIS := A033135, offset := 1, maxIndex := 18, derive := true]
def A033135 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop2 (λ (x y) ↦ (y % 2) + ((x + x) * 2) * 2) (λ (x y) ↦ x + y) x 1 1

end Sequence