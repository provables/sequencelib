/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A080590 sequence
-/

namespace Sequence

@[OEIS := A080590, offset := 1, maxIndex := 100, derive := true]
def A080590 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((loop (λ (x y) ↦ ((((((y * y) + x) / (1 + x)) + y) * 2) - 1) + 2) (x + x) 1 / 2) + 1) + x

end Sequence