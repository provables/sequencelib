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

# A000197 sequence 
-/

namespace Sequence

@[OEIS := A000197, offset := 0]
def A000197 (n : ℕ) : ℤ :=
  let x := n - 0
  loop (λ(x y : ℤ) ↦ loop (λ(x y : ℤ) ↦ (x * y)) (x) (1)) (2) (x)


end Sequence
