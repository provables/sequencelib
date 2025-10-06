/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A242427 sequence
-/

namespace Sequence

@[OEIS := A242427, offset := 1, maxIndex := 61, derive := true]
def A242427 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (loop (λ (x y) ↦ x * y) x 1 % (((2 + x) * x) + 1)) * (1 + x)

end Sequence