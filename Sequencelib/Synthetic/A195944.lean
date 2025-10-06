/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A195944 sequence
-/

namespace Sequence

@[OEIS := A195944, offset := 1, maxIndex := 9, derive := true]
def A195944 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| loop (λ (x y) ↦ (x - 1) + y) ((x - 2) - 2) x

end Sequence