/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A340448 sequence
-/

namespace Sequence

@[OEIS := A340448, offset := 1, maxIndex := 48, derive := true]
def A340448 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((((((((((loop (λ (x y) ↦ if (x % 2) ≤ 0 then y else 0 + x) 2 x % 2) + x % 4) / 2) + 2) * 2) + x) * x) / 2) + 2) / 2) /
  2

end Sequence