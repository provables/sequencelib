/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A141326 sequence
-/

namespace Sequence

@[OEIS := A141326, offset := 1, maxIndex := 100, derive := true]
def A141326 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (((loop (λ (x _y) ↦ x * x) 2 (1 + x) * 3) + 1) + x) * 3

end Sequence