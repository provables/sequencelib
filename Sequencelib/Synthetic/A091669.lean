/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A091669 sequence
-/

namespace Sequence

@[OEIS := A091669, offset := 1, maxIndex := 85, derive := true]
def A091669 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (loop2 (λ (x y) ↦ x * y) (λ (_x y) ↦ (2 + y) + y) x 1 2 / loop (λ (x y) ↦ x * y) x 1) / (1 + x)

end Sequence