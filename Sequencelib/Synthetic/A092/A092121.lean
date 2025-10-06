/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A092121 sequence
-/

namespace Sequence

@[OEIS := A092121, offset := 3, maxIndex := 11, derive := true]
def A092121 (n : ℕ) : ℕ :=
  let x := n - 3
  Int.toNat <| ((loop (λ (x y) ↦ 1 + (((y - x) / (x + 2)) * x)) x 1 + x) + 2) * 2

end Sequence