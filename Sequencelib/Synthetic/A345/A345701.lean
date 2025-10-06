/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A345701 sequence
-/

namespace Sequence

@[OEIS := A345701, offset := 0, maxIndex := 40, derive := true]
def A345701 (x : ℕ) : ℤ :=
  (3 * ((x * x) * x)) - 1

end Sequence