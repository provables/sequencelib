/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A078836 sequence
-/

namespace Sequence

@[OEIS := A078836, offset := 6, maxIndex := 100, derive := true]
def A078836 (n : ℕ) : ℕ :=
  let x := n - 6
  Int.toNat <| loop (λ (x _y) ↦ x + x) x (2 + (2 + (2 + x)))

end Sequence