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
# A249127 sequence 
-/


namespace Sequence

@[OEIS := A249127, offset := 0, derive := true, maxIndex := 100]
def A249127 (x : ℕ) : ℕ :=
  Int.toNat <| (((x / 2) + x) * x)

end Sequence

