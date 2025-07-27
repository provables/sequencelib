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

# A076939 sequence 
-/

namespace Sequence

@[OEIS := A076939, offset := 1, derive := true, maxIndex := 10]
def A076939 (n : ℕ) : ℤ :=
  let x := n - 1
  loop (λ(x y : ℤ) ↦ (x + x)) ((x / 2)) (1)


end Sequence
