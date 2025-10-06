/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A112090 sequence
-/

namespace Sequence

@[OEIS := A112090, offset := 1, maxIndex := 6, derive := true]
def A112090 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| comprN (λ (x : ℤ) ↦ ((((((((x - 1) / 2) * x) + 2) / 2) / 2) + 1) % (1 + 2))) x

end Sequence