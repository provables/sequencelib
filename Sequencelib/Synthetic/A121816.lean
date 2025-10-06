/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A121816 sequence
-/

namespace Sequence

@[OEIS := A121816, offset := 4, maxIndex := 66, derive := true]
def A121816 (n : ℕ) : ℕ :=
  let x := n - 4
  Int.toNat <| ((((((1 + loop (λ (_x y) ↦ y) ((x - 1) - 2) 2) / 2) + x) + 2) + 2) + 2) + 2

end Sequence