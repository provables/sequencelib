/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A210576 sequence
-/

namespace Sequence

@[OEIS := A210576, offset := 1, maxIndex := 15, derive := true]
def A210576 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| comprN (λ (x) ↦ ((1 + ((x / 2) / (4 + 1))) - x % 2) - x % 3) x

end Sequence