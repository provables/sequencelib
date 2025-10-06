/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A214861 sequence
-/

namespace Sequence

@[OEIS := A214861, offset := 1, maxIndex := 87, derive := true]
def A214861 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((loop (λ (x _y) ↦ (((((loop (λ (x _y) ↦ x / 3) 2 x / 2) + x) / 2) + x) % 2) + x) 2 x + x) % 2) + 2

end Sequence