/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A213182 sequence
-/

namespace Sequence

@[OEIS := A213182, offset := 1, maxIndex := 41, derive := true]
def A213182 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y) ↦ loop (λ (x _y) ↦ x * x) y ((3 + 2) * 2) + x) 2 x

end Sequence