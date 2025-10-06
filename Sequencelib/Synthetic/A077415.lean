/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A077415 sequence
-/

namespace Sequence

@[OEIS := A077415, offset := 2, maxIndex := 100, derive := true]
def A077415 (n : ℕ) : ℕ :=
  let x := n - 2
  Int.toNat <| loop (λ (x y) ↦ (((2 + y) * y) + x) + y) x x

end Sequence