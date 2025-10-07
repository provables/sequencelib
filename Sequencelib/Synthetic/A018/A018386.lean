/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A018386 sequence
-/

namespace Sequence

@[OEIS := A018386, offset := 1, maxIndex := 8, derive := true]
def A018386 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| comprN (λ (x) ↦ (loop (λ (x _y) ↦ 2 * ((x * x) + x)) 2 2 - 2) % (1 + x)) x + 1

end Sequence