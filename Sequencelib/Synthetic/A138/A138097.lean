/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A138097 sequence
-/

namespace Sequence

@[OEIS := A138097, offset := 1, maxIndex := 17, derive := true]
def A138097 (n : ℕ) : ℤ :=
  let x := n - 1
  (((comprN (λ (x : ℤ) ↦ ((loop (λ (x y : ℤ) ↦ (x / (1 + (x % (2 + 1))))) (x) (x) + 2) % 2)) x + 1) / 2) + 1) + x

end Sequence