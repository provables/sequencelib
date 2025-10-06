/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A225370 sequence
-/

namespace Sequence

@[OEIS := A225370, offset := 1, maxIndex := 20, derive := true]
def A225370 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (_x y) ↦ 2 + loop (λ (x y) ↦ x + y) y 2) (x - 1) 1 / (x + 2)

end Sequence