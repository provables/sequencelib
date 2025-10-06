/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A050506 sequence
-/

namespace Sequence

@[OEIS := A050506, offset := 3, maxIndex := 71, derive := true]
def A050506 (n : ℕ) : ℕ :=
  let x := n - 3
  Int.toNat <| ((loop (λ (x _y) ↦ ((-x)) / 3) 3 x + 2) + x) / 2

end Sequence