/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A187508 sequence
-/

namespace Sequence

@[OEIS := A187508, offset := 1, maxIndex := 49, derive := true]
def A187508 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (loop (λ (_x y) ↦ (y * y) - y) ((x + x) + x) 1 + x) - 1

end Sequence