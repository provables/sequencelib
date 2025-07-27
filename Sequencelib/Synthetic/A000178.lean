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

# A000178 sequence 
-/

namespace Sequence

@[OEIS := A000178, offset := 0]
def A000178 (n : ℕ) : ℤ :=
  let x := n - 0
  loop (λ(x y : ℤ) ↦ loop (λ(x y : ℤ) ↦ (x * y)) (y) (x)) (x) (1)


end Sequence
