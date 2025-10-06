/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A047309 sequence
-/

namespace Sequence

@[OEIS := A047309, offset := 1, maxIndex := 56, derive := true]
def A047309 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| comprN (λ (x : ℤ) ↦ (((x * x) % (1 + (2 + (2 + 2)))) % 2)) x + 1

end Sequence