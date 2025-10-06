/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A124351 sequence
-/

namespace Sequence

@[OEIS := A124351, offset := 3, maxIndex := 100, derive := true]
def A124351 (n : ℕ) : ℕ :=
  let x := n - 3
  Int.toNat <| loop (λ (x _y) ↦ (loop (λ (x _y) ↦ ((2 * 4) + x) * x) (2 - x) x + 2) * 2) 2 x

end Sequence