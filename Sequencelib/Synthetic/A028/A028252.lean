/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A028252 sequence
-/

namespace Sequence

@[OEIS := A028252, offset := 1, maxIndex := 10, derive := true]
def A028252 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((loop (λ (x y) ↦ (((((y * y) + x) / (1 + x)) + y) + y) + y) (1 + x) 0 - 1) + x) + x

end Sequence