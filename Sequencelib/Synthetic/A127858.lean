/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A127858 sequence
-/

namespace Sequence

@[OEIS := A127858, offset := 1, maxIndex := 17, derive := true]
def A127858 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x _y) ↦ loop (λ (x y) ↦ 2 - ((2 + y) * x)) 2 x) (x + 1) 1

end Sequence