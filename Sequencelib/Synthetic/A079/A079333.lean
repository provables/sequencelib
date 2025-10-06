/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A079333 sequence
-/

namespace Sequence

@[OEIS := A079333, offset := 1, maxIndex := 26, derive := true]
def A079333 (n : ℕ) : ℤ :=
  let x := n - 1
  comprN (λ (x : ℤ) ↦ (loop (λ (x y : ℤ) ↦ (x * (2 + y))) ((2 * (2 + 2))) (x) % (1 + x))) x + 1

end Sequence