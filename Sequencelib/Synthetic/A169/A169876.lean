/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A169876 sequence
-/

namespace Sequence

@[OEIS := A169876, offset := 1, maxIndex := 7, derive := true]
def A169876 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| comprN (λ (x) ↦ loop (λ (x y) ↦ x * y) x 1 % (2 + x)) (2 + x)

end Sequence