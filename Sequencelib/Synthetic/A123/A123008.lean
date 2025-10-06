/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A123008 sequence
-/

namespace Sequence

@[OEIS := A123008, offset := 1, maxIndex := 100, derive := true]
def A123008 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop2 (λ (x y) ↦ (y + x) + y) (λ (x y) ↦ (x + ((x * 3) * 4)) + y) x 1 2

end Sequence