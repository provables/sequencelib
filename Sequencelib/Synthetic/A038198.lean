/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A038198 sequence
-/

namespace Sequence

@[OEIS := A038198, offset := 1, maxIndex := 5, derive := true]
def A038198 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (loop (λ (x _y) ↦ loop (λ (x y) ↦ ((x * x) + y) / 2) 2 x + x) x 0 * 2) + 1

end Sequence