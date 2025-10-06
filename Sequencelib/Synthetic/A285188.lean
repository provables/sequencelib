/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A285188 sequence
-/

namespace Sequence

@[OEIS := A285188, offset := 1, maxIndex := 100, derive := true]
def A285188 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y) ↦ (((y / 2) * y) * y) + x) (1 + x) 0

end Sequence