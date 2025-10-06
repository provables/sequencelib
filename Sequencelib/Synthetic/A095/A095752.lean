/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A095752 sequence
-/

namespace Sequence

@[OEIS := A095752, offset := 1, maxIndex := 17, derive := true]
def A095752 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((loop (λ (x _y) ↦ 2 + ((2 * ((2 * (x + x)) + x)) - 1)) x 1 - 1) + 1) * ((((2 + x) * 3) + x) + 1)

end Sequence