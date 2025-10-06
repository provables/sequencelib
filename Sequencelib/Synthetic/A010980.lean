/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A010980 sequence
-/

namespace Sequence

@[OEIS := A010980, offset := 27, maxIndex := 100, derive := true]
def A010980 (n : ℕ) : ℕ :=
  let x := n - 27
  Int.toNat <| loop (λ (x y) ↦ ((loop (λ (x y) ↦ (x * x) + y) 2 2 * x) / y) + x) x 1

end Sequence