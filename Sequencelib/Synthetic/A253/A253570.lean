/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A253570 sequence
-/

namespace Sequence

@[OEIS := A253570, offset := 3, maxIndex := 12, derive := true]
def A253570 (n : ℕ) : ℕ :=
  let x := n - 3
  Int.toNat <| loop (λ (_x y) ↦ y) (x - 2) 1 + (x - 1) / 3

end Sequence