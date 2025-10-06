/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A010990 sequence
-/

namespace Sequence

@[OEIS := A010990, offset := 37, maxIndex := 100, derive := true]
def A010990 (n : ℕ) : ℕ :=
  let x := n - 37
  Int.toNat <| loop (λ (x y) ↦ ((loop (λ (x _y) ↦ 2 * ((x + x) + x)) 2 x + x) / y) + x) x 1

end Sequence