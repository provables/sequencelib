/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A037607 sequence
-/

namespace Sequence

@[OEIS := A037607, offset := 1, maxIndex := 19, derive := true]
def A037607 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y) ↦ (1 + ((2 * ((x + x) + x)) + x)) + y % 3) x 1

end Sequence