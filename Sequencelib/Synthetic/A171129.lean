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
# A171129 sequence 
-/


namespace Sequence

@[OEIS := A171129, offset := 0, derive := true, maxIndex := 37]
def A171129 (x : ℕ) : ℤ :=
  ((((x * x) - 1) * (((x * x) - x) / 2)) - x)

end Sequence

