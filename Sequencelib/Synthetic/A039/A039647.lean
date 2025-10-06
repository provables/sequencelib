/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A039647 sequence
-/

namespace Sequence

@[OEIS := A039647, offset := 1, maxIndex := 21, derive := true]
def A039647 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y) ↦ x * y) x (loop2 (λ (x y) ↦ x + y) (λ (x _y) ↦ x) x 1 2)

end Sequence