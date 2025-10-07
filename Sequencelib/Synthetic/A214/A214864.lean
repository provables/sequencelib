/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A214864 sequence
-/

namespace Sequence

@[OEIS := A214864, offset := 1, maxIndex := 49, derive := true]
def A214864 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| comprN (λ (x) ↦ (2 - ((((x / 2) / 2) / 2) % 2)) - (x / 2) % 2) x

end Sequence