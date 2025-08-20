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
# A010716 sequence
-/


namespace Sequence

@[OEIS := A010716, offset := 0, derive := true, maxIndex := 100]
def A010716 (_x : ℕ) : ℕ := 5

end Sequence
