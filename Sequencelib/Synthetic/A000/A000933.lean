/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A000933 sequence
-/

namespace Sequence

@[OEIS := A000933, offset := 1, maxIndex := 100, derive := true]
def A000933 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((((loop (λ (x y) ↦ (x - 2) + y) (x - 2) x * 2) / 3) + 2) / 2) / 2

end Sequence