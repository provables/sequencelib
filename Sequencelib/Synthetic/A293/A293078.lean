/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A293078 sequence
-/

namespace Sequence

@[OEIS := A293078, offset := 1, maxIndex := 35, derive := true]
def A293078 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop2 (λ (x y) ↦ x + y) (λ (x y) ↦ (x / 2) + y) x 1 1

end Sequence