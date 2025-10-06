/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A135576 sequence
-/

namespace Sequence

@[OEIS := A135576, offset := 1, maxIndex := 100, derive := true]
def A135576 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop2 (λ (_x y) ↦ (y * y) + y) (λ (_x y) ↦ y + y) x 0 2 + 1

end Sequence