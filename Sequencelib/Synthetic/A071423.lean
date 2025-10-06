/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A071423 sequence
-/

namespace Sequence

@[OEIS := A071423, offset := 1, maxIndex := 58, derive := true]
def A071423 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((((x * x) - ((x * x) / 2) / 2) / (1 + 4)) + 1) + x

end Sequence