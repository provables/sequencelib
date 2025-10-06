/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A192736 sequence
-/

namespace Sequence

@[OEIS := A192736, offset := 1, maxIndex := 44, derive := true]
def A192736 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| (1 + (((x * x) / 3) + x)) * (1 + x)

end Sequence