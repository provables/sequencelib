/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A027767 sequence
-/

namespace Sequence

@[OEIS := A027767, offset := 6, maxIndex := 36, derive := true]
def A027767 (n : ℕ) : ℕ :=
  let x := n - 6
  Int.toNat <| loop (λ (x y) ↦ (((2 * ((x + x) + x)) + x) / y) + x) x (loop (λ (x _y) ↦ (1 + x) + x) 2 1 + x)

end Sequence