/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A047499 sequence
-/

namespace Sequence

@[OEIS := A047499, offset := 1, maxIndex := 62, derive := true]
def A047499 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y) ↦ (x - ((x / 2) % 2)) + y) 2 x + x

end Sequence