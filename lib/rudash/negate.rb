module Negate
    def negate
        negate_proc = -> (a_proc) {
            case a_proc
                when Proc
                    negate_proc = -> (*args) {
                        !a_proc[*args]
                    }
                else
                    raise 'Expected a Proc'
            end
        }
    end
end
