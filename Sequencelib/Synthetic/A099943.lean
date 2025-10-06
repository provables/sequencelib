/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A099943 sequence
-/

namespace Sequence

@[OEIS := A099943, offset := 2, maxIndex := 50, derive := true]
def A099943 (n : ℕ) : ℕ :=
  let x := n - 2
  Int.toNat <| loop (λ (x _y) ↦ loop (λ (x _y) ↦ 2 * (2 + x)) 2 x + x) 2 x + x

end Sequence