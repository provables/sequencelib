/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A059986 sequence
-/

namespace Sequence

@[OEIS := A059986, offset := 0, maxIndex := 38, derive := true]
def A059986 (x : ℕ) : ℕ :=
  Int.toNat <| 3 * (((2 + x) * (x * x)) + x)

end Sequence