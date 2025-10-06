/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A278313 sequence
-/

namespace Sequence

@[OEIS := A278313, offset := 1, maxIndex := 100, derive := true]
def A278313 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((loop (λ (x _y) ↦ x * x) 2 (2 + x) * x) + 1) % (4 + 1)

end Sequence