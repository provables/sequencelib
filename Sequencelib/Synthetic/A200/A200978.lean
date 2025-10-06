/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A200978 sequence
-/

namespace Sequence

@[OEIS := A200978, offset := 3, maxIndex := 20, derive := true]
def A200978 (n : ℕ) : ℕ :=
  let x := n - 3
  Int.toNat <| loop (λ (x _y) ↦ loop (λ (x y) ↦ (2 + y) * x) x (1 + x) * x) 1 (1 + x)

end Sequence