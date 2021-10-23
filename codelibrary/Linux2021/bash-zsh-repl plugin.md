
job is run on every TextChanged or TextChangedI

when evaluator is started
save attrs and evaluator do State.instances


REMEMBER if wanting to log from read_start callback:
save data variable to object, then call self:read_data which then logs.info(self.data)
