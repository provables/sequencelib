/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A184483 sequence
-/

namespace Sequence

@[OEIS := A184483, offset := 1, maxIndex := 57, derive := true]
def A184483 (n : ℕ) : ℕ :=
  let x := n - 1
  Int.toNat <| ((((((((((((((((x + x) + x) / (1 + (2 + 4))) + x) + x) / 2) + x) + x) + 2) / 2) + 2) + x) / 2) + x) + x) + 2) + x

end Sequence