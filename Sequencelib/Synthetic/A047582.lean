/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A047582 sequence
-/

namespace Sequence

@[OEIS := A047582, offset := 1, maxIndex := 62, derive := true]
def A047582 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (1 + (loop (λ (x _y) ↦ x - ((x / 2) % 2)) 2 x + 2)) + x

end Sequence