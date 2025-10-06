/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A139378 sequence
-/

namespace Sequence

@[OEIS := A139378, offset := 1, maxIndex := 9, derive := true]
def A139378 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x _y) ↦ (2 * 4) % (1 + x)) 2 x + 1

end Sequence