/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A192068 sequence
-/

namespace Sequence

@[OEIS := A192068, offset := 1, maxIndex := 29, derive := true]
def A192068 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((x % 2) - 1) + loop2 (λ (x y) ↦ x + y) (λ (x _y) ↦ x) (x + x) 1 1

end Sequence