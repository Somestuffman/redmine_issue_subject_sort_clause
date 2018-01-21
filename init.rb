ActionDispatch::Callbacks.to_prepare do
	require_dependency 'sort_clause_patch'
end

Redmine::Plugin.register :redmine_issue_subject_sort_clause do
  name 'Redmine issue subject sort clause plugin'
  author 'Semen Formatorov'
  description 'Plugin for correct issue sorting, when subject starts with a number'
  version '0.0.1'
  url 'https://github.com/Somestuffman/redmine_issue_subject_sort_clause'
  author_url 'https://github.com/Somestuffman'
end
