/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A095915 sequence
-/

namespace Sequence

@[OEIS := A095915, offset := 1, maxIndex := 85, derive := true]
def A095915 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x _y) ↦ 2 * (x % (2 + (2 * 4)))) x 1

end Sequence