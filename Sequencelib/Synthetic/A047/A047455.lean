/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A047455 sequence
-/

namespace Sequence

@[OEIS := A047455, offset := 1, maxIndex := 60, derive := true]
def A047455 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| comprN (λ (x) ↦ (x % (2 * 4)) - 2) x + 2

end Sequence