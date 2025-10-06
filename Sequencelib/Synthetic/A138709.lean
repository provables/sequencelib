/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A138709 sequence
-/

namespace Sequence

@[OEIS := A138709, offset := 1, maxIndex := 88, derive := true]
def A138709 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y) ↦ (y / loop2 (λ (x y) ↦ x + y) (λ (x _y) ↦ x) x 1 1) + x) (1 + x) 0 % 2

end Sequence