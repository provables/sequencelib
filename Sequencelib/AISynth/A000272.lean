/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter Moreira and Joe Stubbs
-/
import Mathlib
import Sequencelib.Meta

open Synth

/-!
# A000272 sequence
-/

namespace Sequence

@[OEIS := A000272, offset := 0, maxIndex := 100, derive := true]

def A000272 (n : ℕ) : ℕ :=
  if n = 0 then 1 else n ^ (n - 2)


end Sequence