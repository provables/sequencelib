/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A028737 sequence
-/

namespace Sequence

@[OEIS := A028737, offset := 1, maxIndex := 18, derive := true]
def A028737 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| comprN (λ (x : ℤ) ↦ if ((((x / 2) * x) % (2 + 2))) ≤ 0 then (((x + 1) % (1 + 2))) else (0)) x

end Sequence