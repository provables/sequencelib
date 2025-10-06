/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A135215 sequence
-/

namespace Sequence

@[OEIS := A135215, offset := 1, maxIndex := 11, derive := true]
def A135215 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (loop (λ (x y) ↦ (x % (2 + (x % 2))) + y) x 0 / 2) + x

end Sequence