/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A001730 sequence
-/

namespace Sequence

@[OEIS := A001730, offset := 6, maxIndex := 25, derive := true]
def A001730 (n : ℕ) : ℕ :=
  let x := n - 6
  Int.toNat <| loop (λ (x y) ↦ (2 + (2 + (2 + y))) * x) x 1

end Sequence