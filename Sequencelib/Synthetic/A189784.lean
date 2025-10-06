/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A189784 sequence
-/

namespace Sequence

@[OEIS := A189784, offset := 1, maxIndex := 83, derive := true]
def A189784 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((((((((((loop (λ (x y) ↦ (x + y) / 2) 2 x + x) / 2) + 1) + x) / 2) + 1) + x) / 2) / 2) + 1) + x

end Sequence