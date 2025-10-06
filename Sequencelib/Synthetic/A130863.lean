/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A130863 sequence
-/

namespace Sequence

@[OEIS := A130863, offset := 1, maxIndex := 30, derive := true]
def A130863 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (loop (λ (x y) ↦ loop (λ (x y) ↦ x + y) (2 + y) x) (2 + x) 0 - x) * x

end Sequence