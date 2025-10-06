/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A189574 sequence
-/

namespace Sequence

@[OEIS := A189574, offset := 1, maxIndex := 83, derive := true]
def A189574 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y) ↦ (((((y * y) + x) / (1 + x)) + y) - 1) + y) (1 + x) 0 % (1 + x)

end Sequence