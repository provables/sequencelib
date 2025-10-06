/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A114479 sequence
-/

namespace Sequence

@[OEIS := A114479, offset := 1, maxIndex := 20, derive := true]
def A114479 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop2 (λ (x y) ↦ ((2 * ((x + x) + x)) - y) + x) (λ (x y) ↦ x + y) x 3 1

end Sequence