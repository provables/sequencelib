/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A344805 sequence
-/

namespace Sequence

@[OEIS := A344805, offset := 1, maxIndex := 50, derive := true]
def A344805 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| comprN (λ (x : ℤ) ↦ (((((2 * ((x + x) % (1 + 2))) + 1) * 2) * 2) - x)) x

end Sequence