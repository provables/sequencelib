/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A047366 sequence
-/

namespace Sequence

@[OEIS := A047366, offset := 1, maxIndex := 64, derive := true]
def A047366 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (loop (λ (x y) ↦ (x % 2) + y) x 1 - (x + 1) / 4) + x

end Sequence