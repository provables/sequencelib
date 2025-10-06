/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A053469 sequence
-/

namespace Sequence

@[OEIS := A053469, offset := 1, maxIndex := 22, derive := true]
def A053469 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x _y) ↦ 2 * ((x + x) + x)) x (1 + x)

end Sequence