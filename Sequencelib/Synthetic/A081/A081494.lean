/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A081494 sequence
-/

namespace Sequence

@[OEIS := A081494, offset := 1, maxIndex := 32, derive := true]
def A081494 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop2 (λ (x y) ↦ loop (λ (x _y) ↦ x + x) y 1 + x) (λ (_x _y) ↦ 1) x 1 x

end Sequence