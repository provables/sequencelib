/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A033343 sequence
-/

namespace Sequence

@[OEIS := A033343, offset := 1, maxIndex := 92, derive := true]
def A033343 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (loop (λ (x y) ↦ (2 + y) * x) 2 2 - 1) / (1 + x)

end Sequence