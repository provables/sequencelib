/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A207188 sequence
-/

namespace Sequence

@[OEIS := A207188, offset := 1, maxIndex := 62, derive := true]
def A207188 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((loop (λ (x y) ↦ (y / loop (λ (x y) ↦ (x + x) + y) x 1) + x) x 1 + x) + 1) + x

end Sequence