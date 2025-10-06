/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A001320 sequence
-/

namespace Sequence

@[OEIS := A001320, offset := 1, maxIndex := 9, derive := true]
def A001320 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop2 (λ (x y) ↦ (x * x) * y) (λ (_x y) ↦ y + y) x 1 1 * loop (λ (x _y) ↦ (1 + x) + x) x 1

end Sequence