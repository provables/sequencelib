/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A017762 sequence
-/

namespace Sequence

@[OEIS := A017762, offset := 98, maxIndex := 100, derive := true]
def A017762 (n : ℕ) : ℕ :=
  let x := n - 98
  Int.toNat <| loop (λ (x y) ↦ (((loop (λ (x _y) ↦ (2 + (2 * 4)) * x) 2 1 - 2) * x) / y) + x) x 1

end Sequence