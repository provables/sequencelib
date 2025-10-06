/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A010974 sequence
-/

namespace Sequence

@[OEIS := A010974, offset := 21, maxIndex := 100, derive := true]
def A010974 (n : ℕ) : ℕ :=
  let x := n - 21
  Int.toNat <| loop (λ (x y) ↦ (((loop (λ (x _y) ↦ 2 * (2 + x)) 2 2 * x) + x) / y) + x) x 1

end Sequence