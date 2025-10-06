/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A187103 sequence
-/

namespace Sequence

@[OEIS := A187103, offset := 1, maxIndex := 11, derive := true]
def A187103 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (loop (λ (x y) ↦ x + y) (2 + x) x + x) / (2 + x)

end Sequence