require_dependency 'sort_helper'
ActionDispatch::Callbacks.to_prepare do
	require_dependency 'sort_clause_patch'
end

Redmine::Plugin.register :sorty do
  name 'Sorty plugin'
  author 'Semen Formatorov'
  description 'Patch for Redmine sort method'
  version '0.0.1'
  url ''
  author_url ''
end
