/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A106253 sequence
-/

namespace Sequence

@[OEIS := A106253, offset := 1, maxIndex := 100, derive := true]
def A106253 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| 2 + (((x % 3) % 2) - x % 2)

end Sequence