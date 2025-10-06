/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A182214 sequence
-/

namespace Sequence

@[OEIS := A182214, offset := 3, maxIndex := 79, derive := true]
def A182214 (n : ℕ) : ℕ :=
  let x := n - 3
  Int.toNat <| (2 / (((1 + x) % 4) + 1)) + 2

end Sequence