/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A348461 sequence
-/

namespace Sequence

@[OEIS := A348461, offset := 2, maxIndex := 6, derive := true]
def A348461 (n : ℕ) : ℕ :=
  let x := n - 2
  Int.toNat <| 2 * ((2 + ((2 + x) * x)) * (2 + x))

end Sequence