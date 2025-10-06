/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A079861 sequence
-/

namespace Sequence

@[OEIS := A079861, offset := 8, maxIndex := 100, derive := true]
def A079861 (n : ℕ) : ℕ :=
  let x := n - 8
  Int.toNat <| loop (λ (x _y) ↦ x + x) x (loop (λ (x y) ↦ x + y) 4 x)

end Sequence