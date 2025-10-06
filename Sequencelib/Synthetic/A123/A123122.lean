/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A123122 sequence
-/

namespace Sequence

@[OEIS := A123122, offset := 1, maxIndex := 70, derive := true]
def A123122 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| comprN (λ (x : ℤ) ↦ ((((((x + x) + x) % (1 + (2 + (2 + 2)))) * 2) * 2) - x)) x

end Sequence