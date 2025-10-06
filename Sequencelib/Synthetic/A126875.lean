/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A126875 sequence
-/

namespace Sequence

@[OEIS := A126875, offset := 5, maxIndex := 9, derive := true]
def A126875 (n : ℕ) : ℕ :=
  let x := n - 5
  Int.toNat <| loop2 (λ (x y) ↦ (2 + ((x + x) + x)) + y) (λ (x _y) ↦ x) x 0 x

end Sequence