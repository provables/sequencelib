/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A175603 sequence
-/

namespace Sequence

@[OEIS := A175603, offset := 1, maxIndex := 99, derive := true]
def A175603 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (loop (λ (x _y) ↦ 2 * ((2 * (x + x)) + x)) x 2 - 1) * (loop (λ (x _y) ↦ 2 * (2 + x)) 2 2 * 2)

end Sequence