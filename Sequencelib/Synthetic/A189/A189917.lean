/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A189917 sequence
-/

namespace Sequence

@[OEIS := A189917, offset := 1, maxIndex := 97, derive := true]
def A189917 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (((x * x) / (2 + (2 * loop (λ (x y) ↦ (2 + y) * x) 2 x))) + x) * 4

end Sequence