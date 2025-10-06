/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A027440 sequence
-/

namespace Sequence

@[OEIS := A027440, offset := 1, maxIndex := 7, derive := true]
def A027440 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| 1 + (loop (λ (_x y) ↦ y) (x - 1) x + x)

end Sequence