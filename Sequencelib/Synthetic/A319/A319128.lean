/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A319128 sequence
-/

namespace Sequence

@[OEIS := A319128, offset := 0, maxIndex := 100, derive := true]
def A319128 (x : ℕ) : ℤ :=
  (3 * ((x * x) / 4)) - x

end Sequence