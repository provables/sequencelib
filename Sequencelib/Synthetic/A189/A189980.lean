/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A189980 sequence
-/

namespace Sequence

@[OEIS := A189980, offset := 10, maxIndex := 47, derive := true]
def A189980 (n : ℕ) : ℕ :=
  let x := n - 10
  Int.toNat <| loop (λ (x y) ↦ (((2 * (x + x)) + x) / y) + x) (x / 2) 1

end Sequence