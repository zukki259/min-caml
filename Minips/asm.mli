type id_or_imm = V of Id.t | C of int
<<<<<<< HEAD
type t = 
  | Ans of exp
  | Let of (Id.t * Type.t) * exp * t
and exp = 
  | Nop
=======
type t = Ans of exp | Let of (Id.t * Type.t) * exp * t
and exp =
    Nop
>>>>>>> fib
  | Li of int
  | FLi of Id.l
  | SetL of Id.l
  | Mr of Id.t
  | Neg of Id.t
  | Add of Id.t * id_or_imm
  | Sub of Id.t * id_or_imm
<<<<<<< HEAD
  | Mul of Id.t * id_or_imm
  | Div of Id.t * id_or_imm
  | Slw of Id.t * id_or_imm
  | Lwz of Id.t * id_or_imm
  | Stw of Id.t * Id.t * id_or_imm
  | FMr of Id.t 
=======
  | Sll of Id.t * id_or_imm
  | Lw of Id.t * id_or_imm
  | Sw of Id.t * Id.t * id_or_imm
  | FMr of Id.t
>>>>>>> fib
  | FNeg of Id.t
  | FAdd of Id.t * Id.t
  | FSub of Id.t * Id.t
  | FMul of Id.t * Id.t
  | FDiv of Id.t * Id.t
  | Lfd of Id.t * id_or_imm
  | Stfd of Id.t * Id.t * id_or_imm
  | Comment of string
<<<<<<< HEAD
  (* virtual instructions *)
  | IfEq of Id.t * id_or_imm * t * t
  | IfLE of Id.t * id_or_imm * t * t
  | IfGE of Id.t * id_or_imm * t * t (* for simm *)
  | IfFEq of Id.t * Id.t * t * t
  | IfFLE of Id.t * Id.t * t * t
  (* closure address, integer arguments, and float arguments *)
  | CallCls of Id.t * Id.t list * Id.t list
  | CallDir of Id.l * Id.t list * Id.t list
  | Save of Id.t * Id.t (* �쥸�����ѿ����ͤ򥹥��å��ѿ�����¸ *)
  | Restore of Id.t (* �����å��ѿ������ͤ����� *)
type fundef =
    { name : Id.l; args : Id.t list; fargs : Id.t list; body : t; ret : Type.t }
type prog = Prog of (Id.l * float) list * fundef list * t

val fletd : Id.t * exp * t -> t (* shorthand of Let for float *)
val seq : exp * t -> t (* shorthand of Let for unit *)

val regs : Id.t array
val fregs : Id.t array
val allregs : Id.t list
val allfregs : Id.t list
val reg_cl : Id.t
val reg_sw : Id.t
val reg_fsw : Id.t
val reg_hp : Id.t
val reg_sp : Id.t
val reg_tmp : Id.t
val is_reg : Id.t -> bool

val fv : t -> Id.t list
=======
  | IfEq of Id.t * id_or_imm * t * t
  | IfLE of Id.t * id_or_imm * t * t
  | IfGE of Id.t * id_or_imm * t * t
  | IfFEq of Id.t * Id.t * t * t
  | IfFLE of Id.t * Id.t * t * t
  | CallCls of Id.t * Id.t list * Id.t list
  | CallDir of Id.l * Id.t list * Id.t list
  | Save of Id.t * Id.t
  | Restore of Id.t
type fundef = {
  name : Id.l;
  args : Id.t list;
  fargs : Id.t list;
  body : t;
  ret : Type.t;
}
type prog = Prog of (Id.l * float) list * fundef list * t
val fletd : Id.t * exp * t -> t
val seq : exp * t -> t
val regs : string array
val fregs : string array
val allregs : string list
val allfregs : string list
val reg_cl : string
val reg_sw : string
val reg_fsw : string
val reg_hp : string
val reg_sp : string
val reg_tmp : string
val reg_link : string
val reg_cmp : string
val reg_zero : string
val is_reg : string -> bool

val fv : t -> S.elt list
>>>>>>> fib
val concat : t -> Id.t * Type.t -> t -> t

val align : int -> int
