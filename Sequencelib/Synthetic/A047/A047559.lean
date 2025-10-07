/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A047559 sequence
-/

namespace Sequence

@[OEIS := A047559, offset := 1, maxIndex := 66, derive := true]
def A047559 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| comprN (λ (x) ↦ (((1 + (x / 2)) % 4) - 1) - x % 2) x

end Sequence