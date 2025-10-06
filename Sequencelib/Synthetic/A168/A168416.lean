/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A168416 sequence
-/

namespace Sequence

@[OEIS := A168416, offset := 1, maxIndex := 100, derive := true]
def A168416 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x _y) ↦ (x + x) + x) 2 (x - (x / 2)) + 1

end Sequence