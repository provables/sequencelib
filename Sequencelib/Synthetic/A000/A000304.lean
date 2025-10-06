/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A000304 sequence
-/

namespace Sequence

@[OEIS := A000304, offset := 2, maxIndex := 17, derive := true]
def A000304 (n : ℕ) : ℕ :=
  let x := n - 2
  Int.toNat <| loop2 (λ (_x y) ↦ y) (λ (x y) ↦ x * y) x 2 3

end Sequence