/-
Copyright (c) 2025 Walter Moreira, Joe Stubbs. All rights reserved.
Released under CC BY-SA 4.0 license as described in the file LICENSE.
Authors: Walter and Joe's Synth Bot
-/

import Mathlib
import Sequencelib.Meta
import GenSeq
open Synth

/-!

# A279019 sequence 
-/

namespace Sequence

@[OEIS := A279019, offset := 4, derive := true, maxIndex := 100]
def A279019 (n : ℕ) : ℤ :=
  let x := n - 4
  ((x * x) - x)


end Sequence
