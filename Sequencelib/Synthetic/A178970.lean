/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A178970 sequence
-/

namespace Sequence

@[OEIS := A178970, offset := 1, maxIndex := 70, derive := true]
def A178970 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x _y) ↦ x + x) (x + x) 2 % (1 + (2 + (x + x)))

end Sequence