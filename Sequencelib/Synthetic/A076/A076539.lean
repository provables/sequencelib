/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A076539 sequence
-/

namespace Sequence

@[OEIS := A076539, offset := 1, maxIndex := 73, derive := true]
def A076539 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (loop (λ (x y) ↦ (((x / loop (λ (x _y) ↦ x * x) 2 2) + y) % 2) + x) x 1 + x) / 2

end Sequence