/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A204445 sequence
-/

namespace Sequence

@[OEIS := A204445, offset := 1, maxIndex := 99, derive := true]
def A204445 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((((loop (λ (x y) ↦ (y / x) + 2) (x + x) 2 % 4) + 1) + 2) / 3) % 2

end Sequence