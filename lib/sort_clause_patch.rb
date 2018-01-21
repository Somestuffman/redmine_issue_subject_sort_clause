module SortClausePatch

	def self.included(base)
		base.send(:include, InstanceMethods)

		base.class_eval do 
			unloadable
			alias_method :sort_clause, :sort_clause_with_mod
		end
	end

	module InstanceMethods
		def sort_clause_with_mod
    		sql_str = @sort_criteria.to_sql
    		if sql_str.include?("issues.subject ASC")
    			sql_str.insert(sql_str.index("issues.subject ASC"), "substring(issues.subject from '^\\d+')::int ASC")
    		elsif sql_str.include?("issues.subject DESC")
    			sql_str.insert(sql_str.index("issues.subject DESC"), "substring(issues.subject from '^\\d+')::int DESC")
    		end
    		sql_str
  		end
  	end

end

SortHelper.send(:include, SortClausePatch)