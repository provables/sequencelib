/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A159733 sequence
-/

namespace Sequence

@[OEIS := A159733, offset := 2, maxIndex := 99, derive := true]
def A159733 (n : ℕ) : ℕ :=
  let x := n - 2
  Int.toNat <| loop2 (λ (x y) ↦ (2 + (2 + y)) * x) (λ (_x _y) ↦ 2) (1 + x) (2 + x) 1

end Sequence